import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../i18n/strings.g.dart';
import 'main_wrapper.dart';
import '../security/providers/security_provider.dart';
import '../services/model_download_service.dart';

/// [ModelDownloadScreen] manages the one-time setup of the on-device AI model.
/// It shows the download progress and enables access to the app once the model is ready.
class ModelDownloadScreen extends StatefulWidget {
  const ModelDownloadScreen({super.key});

  @override
  State<ModelDownloadScreen> createState() => _ModelDownloadScreenState();
}

class _ModelDownloadScreenState extends State<ModelDownloadScreen> {
  final String _modelUrl = "https://huggingface.co/litert-community/gemma-4-E2B-it-litert-lm/resolve/main/gemma-4-E2B-it.litertlm?download=true";
  final String _modelFileName = "gemma-4-E2B-it.litertlm";

  void _onSetupComplete() async {
    final provider = context.read<SecurityProvider>();
    final navigator = Navigator.of(context);
    await provider.setOnboarded(true);
    if (mounted) {
      navigator.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const MainWrapper()),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final downloadService = ModelDownloadService();
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return ListenableBuilder(
      listenable: downloadService,
      builder: (context, _) {
        final status = downloadService.status;
        final progress = downloadService.downloadProgress;
        final isDownloading = status == DownloadStatus.downloading;
        final isValidating = status == DownloadStatus.validating;
        final isComplete = status == DownloadStatus.complete;
        final isError = status == DownloadStatus.error;

        return Scaffold(
          backgroundColor: theme.scaffoldBackgroundColor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  // Main Headline
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.notoSans(
                        color: theme.colorScheme.onSurface,
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(text: t.modelDownload.title1),
                        TextSpan(
                          text: t.modelDownload.title2,
                          style: GoogleFonts.notoSans(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    t.modelDownload.subtitle,
                    style: GoogleFonts.notoSans(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Main Model Card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: theme.colorScheme.primary.withValues(alpha: 0.3)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  t.modelDownload.modelName,
                                  style: GoogleFonts.notoSans(
                                    color: theme.colorScheme.onSurface,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  t.modelDownload.modelSpecs,
                                  style: GoogleFonts.notoSans(
                                    color: theme.colorScheme.onSurfaceVariant,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            if (isComplete)
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: theme.colorScheme.primary),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.check, size: 12, color: theme.colorScheme.primary),
                                    const SizedBox(width: 4),
                                    Text(
                                      t.modelDownload.ready,
                                      style: GoogleFonts.notoSans(
                                        color: theme.colorScheme.primary,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        
                        // Progress Bar / Status Indicator
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: LinearProgressIndicator(
                            value: isComplete ? 1.0 : (isDownloading ? progress : 0.0),
                            backgroundColor: theme.colorScheme.surface,
                            color: theme.colorScheme.primary,
                            minHeight: 6,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              isDownloading 
                                  ? "${(progress * 1300).toInt()} MB / 1300 MB" 
                                  : isComplete ? "1300 MB / 1300 MB" : "0 MB / 1300 MB",
                              style: GoogleFonts.notoSans(color: theme.colorScheme.onSurfaceVariant, fontSize: 12),
                            ),
                            if (!isComplete)
                              Text(
                                isValidating ? t.modelDownload.validating : "${(progress * 100).toInt()}%",
                                style: GoogleFonts.notoSans(
                                  color: theme.colorScheme.primary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        // Stats Badges
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            _buildStatBadge(context, t.modelDownload.toks),
                            _buildStatBadge(context, t.modelDownload.ttft),
                            _buildStatBadge(context, t.modelDownload.langs),
                          ],
                        ),
                      ],
                    ),
                  ),

                  if (isError) ...[
                    const SizedBox(height: 16),
                    Text(
                      t.modelDownload.error(error: downloadService.error ?? 'Unknown error'),
                      style: GoogleFonts.notoSans(color: theme.colorScheme.error, fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () => downloadService.downloadModel(_modelUrl, _modelFileName),
                      child: Text(t.modelDownload.retry, style: GoogleFonts.notoSans(color: theme.colorScheme.primary)),
                    ),
                  ],

                  const Spacer(),

                  // Final CTA Button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: isComplete 
                        ? _onSetupComplete
                        : (isDownloading || isValidating) 
                          ? null 
                          : () => downloadService.downloadModel(_modelUrl, _modelFileName),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        disabledBackgroundColor: theme.colorScheme.primary.withValues(alpha: 0.5),
                        foregroundColor: theme.colorScheme.onPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              isComplete ? t.modelDownload.open : t.modelDownload.download,
                              style: GoogleFonts.notoSans(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),

                  if (!isComplete) ...[
                    const SizedBox(height: 12),
                    Center(
                      child: TextButton(
                        onPressed: _onSetupComplete,
                        child: Text(
                          t.modelDownload.later,
                          style: GoogleFonts.notoSans(
                            color: theme.colorScheme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      t.modelDownload.continueSub,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSans(
                        color: theme.colorScheme.primary,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildStatBadge(BuildContext context, String label) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.1)),
      ),
      child: Text(
        label,
        style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 11),
      ),
    );
  }
}
