import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../i18n/strings.g.dart';
import '../services/llm_inference_service.dart';
import '../services/model_download_service.dart';
import '../services/storage_management_service.dart';

class ModelManagementScreen extends StatefulWidget {
  const ModelManagementScreen({super.key});

  @override
  State<ModelManagementScreen> createState() => _ModelManagementScreenState();
}

class _ModelManagementScreenState extends State<ModelManagementScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<StorageManagementService>().refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    const tealColor = Color(0xFF006070);

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAFC),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: tealColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Expanded(
          child: Text(
            t.model_mgmt.appBar,
            style: GoogleFonts.notoSans(
              color: tealColor,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                t.model_mgmt.subtitle,
                style: GoogleFonts.notoSans(
                  color: const Color(0xFF475569),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 32),
            _buildModelCard(
              context,
              name: "Brahm AI - 2B",
              fileName: "gemma-4-E2B-it.litertlm",
              description: t.model_mgmt.brahm_2b_desc,
              size: "1.4 GB",
              downloadUrl: "https://huggingface.co/litert-community/gemma-4-E2B-it-litert-lm/resolve/main/gemma-4-E2B-it.litertlm?download=true",
            ),
            const SizedBox(height: 24),
            _buildModelCard(
              context,
              name: "Brahm AI - 5B",
              fileName: "brahm_5b.bin", // Placeholder
              description: t.model_mgmt.brahm_5b_desc,
              size: "3.2 GB",
              downloadUrl: "", // Placeholder
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildModelCard(
    BuildContext context, {
    required String name,
    required String fileName,
    required String description,
    required String size,
    required String downloadUrl,
  }) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final inferenceService = context.watch<LlmInferenceService>();
    final downloadService = context.watch<ModelDownloadService>();
    final storageService = context.watch<StorageManagementService>();

    final modelFile = storageService.currentStorage.modelDetails.where((m) => m.name == fileName).firstOrNull;
    final isDownloaded = modelFile != null;
    final isLoaded = inferenceService.isModelLoaded && inferenceService.loadedModelName == fileName;
    final isLoading = inferenceService.isModelLoading && inferenceService.loadedModelName == fileName;
    final isDownloading = downloadService.isDownloading && downloadService.downloadingFileName == fileName;

    final badgeTextColor = isLoaded ? const Color(0xFF007A8D) : const Color(0xFF64748B);
    final badgeBgColor = isLoaded ? const Color(0xFFE6F4F6) : const Color(0xFFF1F5F9);
    final badgeBorderColor = isLoaded ? const Color(0xFFB3DEE4) : const Color(0xFFE2E8F0);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 16,
                      color: isLoaded || isDownloaded ? const Color(0xFF006070) : const Color(0xFF64748B).withValues(alpha: 0.4),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        name,
                        style: GoogleFonts.notoSans(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0F172A),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: badgeBgColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: badgeBorderColor),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 6,
                          color: badgeTextColor,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          isLoaded ? t.model_mgmt.status_loaded : (isLoading ? t.model_mgmt.status_loading : t.model_mgmt.status_unloaded),
                          style: GoogleFonts.notoSans(
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                            color: badgeTextColor,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    t.model_mgmt.size(size: size),
                    style: GoogleFonts.notoSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF475569),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: GoogleFonts.notoSans(
              fontSize: 15,
              color: const Color(0xFF475569),
              height: 1.4,
            ),
          ),
          const SizedBox(height: 20),
          
          if (isDownloading) ...[
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFF1F5F9),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE2E8F0)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Downloading model...", 
                        style: GoogleFonts.notoSans(
                          fontSize: 13, 
                          color: const Color(0xFF006070), 
                          fontWeight: FontWeight.w600,
                        )
                      ),
                      Text(
                        "${(downloadService.downloadProgress * 100).toInt()}%", 
                        style: GoogleFonts.notoSans(
                          fontSize: 13, 
                          color: const Color(0xFF006070), 
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: downloadService.downloadProgress,
                      backgroundColor: const Color(0xFF006070).withValues(alpha: 0.1),
                      color: const Color(0xFF006070),
                      minHeight: 6,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],

          Row(
            children: [
              Expanded(
                child: _buildActionButton(
                  context,
                  label: t.model_mgmt.load,
                  icon: Icons.play_arrow_rounded,
                  color: const Color(0xFF006070),
                  onPressed: isDownloaded && !isLoaded && !isLoading && !isDownloading
                      ? () => inferenceService.loadModel(fileName)
                      : null,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildActionButton(
                  context,
                  label: t.model_mgmt.unload,
                  icon: Icons.stop_rounded,
                  isOutlined: true,
                  color: const Color(0xFF006070),
                  onPressed: isLoaded
                      ? () => inferenceService.unloadModel()
                      : null,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: isDownloaded
                    ? _buildActionButton(
                        context,
                        label: "Downloaded",
                        icon: Icons.check_circle_outline_rounded,
                        isOutlined: true,
                        color: const Color(0xFF059669),
                        backgroundColor: const Color(0xFFECFDF5),
                        onPressed: null, // Disabled-style but colorful
                      )
                    : _buildActionButton(
                        context,
                        label: isDownloading ? "Downloading..." : t.model_mgmt.download,
                        icon: Icons.download_rounded,
                        isOutlined: true,
                        color: const Color(0xFF006070),
                        onPressed: !isDownloading && downloadUrl.isNotEmpty
                            ? () => downloadService.downloadModel(downloadUrl, fileName)
                            : null,
                      ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildActionButton(
                  context,
                  label: t.model_mgmt.delete,
                  icon: Icons.delete_outline_rounded,
                  isOutlined: true,
                  color: const Color(0xFFDC2626),
                  onPressed: isDownloaded && !isLoaded
                      ? () => _showDeleteConfirmation(context, name, modelFile.path)
                      : null,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showDeleteConfirmation(BuildContext context, String modelName, String path) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Row(
          children: [
            const Icon(Icons.warning_amber_rounded, color: Color(0xFFDC2626), size: 28),
            const SizedBox(width: 12),
            Text(
              "Delete Model?",
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: const Color(0xFF0F172A),
              ),
            ),
          ],
        ),
        content: RichText(
          text: TextSpan(
            style: GoogleFonts.notoSans(
              fontSize: 15,
              color: const Color(0xFF475569),
              height: 1.5,
            ),
            children: [
              const TextSpan(text: "Are you sure you want to delete "),
              TextSpan(
                text: modelName,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0F172A)),
              ),
              const TextSpan(text: "? You will need to download it again if required later."),
            ],
          ),
        ),
        actionsPadding: const EdgeInsets.only(right: 20, bottom: 20, left: 20),
        actions: [
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    side: const BorderSide(color: Color(0xFFE2E8F0), width: 1.5),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    foregroundColor: const Color(0xFF475569),
                  ),
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    context.read<StorageManagementService>().deleteModelFile(path);
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    backgroundColor: const Color(0xFFB91C1C),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    "Delete",
                    style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context, {
    required String label,
    required IconData icon,
    required Color color,
    Color? backgroundColor,
    bool isOutlined = false,
    VoidCallback? onPressed,
  }) {
    final bool isEnabled = onPressed != null;

    if (isOutlined) {
      return SizedBox(
        height: 52,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            backgroundColor: isEnabled ? (backgroundColor ?? Colors.white) : (backgroundColor ?? const Color(0xFFF8FAFC)),
            side: BorderSide(
              color: isEnabled ? color : (backgroundColor != null ? color.withValues(alpha: 0.5) : const Color(0xFFE2E8F0)), 
              width: 1.5,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            foregroundColor: color,
            disabledForegroundColor: color, // Keep the color for the "Downloaded" state
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 20),
              const SizedBox(width: 8),
              Text(
                label,
                style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return SizedBox(
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isEnabled ? color : const Color(0xFFF1F5F9),
          foregroundColor: Colors.white,
          disabledForegroundColor: const Color(0xFF94A3B8),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                label,
                style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
