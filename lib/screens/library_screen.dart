import 'package:flutter/material.dart';
import '../services/language_service.dart';
import '../services/localization_service.dart';
import '../services/model_download_service.dart';
import '../services/llm_inference_service.dart';

/// [LibraryScreen] serves as the repository and model manager dashboard for the app.
/// It utilizes [ListenableBuilder] to listen for active language and localization state updates,
/// displays filter tabs for models, threads, and voice items, shows on-device models with storage metrics,
/// and handles local AI model download/activation statuses.
class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access LanguageService, ModelDownloadService, and LlmInferenceService to listen for updates
    final languageService = LanguageService();
    final downloadService = ModelDownloadService();
    final inferenceService = LlmInferenceService();

    return ListenableBuilder(
      listenable: languageService,
      builder: (context, _) {
        return ListenableBuilder(
          listenable: downloadService,
          builder: (context, _) {
            return ListenableBuilder(
              listenable: inferenceService,
              builder: (context, _) {
                final lang = languageService.selectedLanguage;
                String t(String key) => LocalizationService.translate(lang, key);

                return Scaffold(
                  backgroundColor: const Color(0xFFF5F5F0),
                  body: SafeArea(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),

                          // Top Header Row with Title, Subtitle, and Settings Icon
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      t('library'),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Serif',
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      t('library_sub'),
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 16),
                              InkWell(
                                onTap: () => _showSettings(context, inferenceService),
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.grey.shade300),
                                  ),
                                  child: const Icon(Icons.settings_outlined, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),

                          // Filter Chips Selection Row (Models, Threads, Voice)
                          Row(
                            children: [
                              _buildFilterChip("models", true),
                              const SizedBox(width: 8),
                              _buildFilterChip("threads", false),
                              const SizedBox(width: 8),
                              _buildFilterChip("voice", false),
                            ],
                          ),

                          const SizedBox(height: 40),

                          // Section Title: On-Device Status Indicator
                          Text(
                            t('on_this_device'),
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),

                          _buildModelCard(
                            title: "Gemma-4-E2B-it",
                            subtitle: "Mobile optimized · low latency",
                            isActive: true,
                            activeLabel: t('active'),
                            tags: ["~22 tok/s", "QAT", _getLanguageTag(languageService.selectedLanguage)],
                            hasDownloadButton: true,
                            status: downloadService.status,
                            downloadProgress: downloadService.downloadProgress,
                            onDownload: () {
                              downloadService.downloadModel(
                                "https://huggingface.co/litert-community/gemma-4-E2B-it-litert-lm/resolve/main/gemma-4-E2B-it.litertlm?download=true",
                                "gemma-4-E2B-it.litertlm"
                              );
                            },
                            // Inference loading logic
                            isLoaded: inferenceService.isModelLoaded,
                            isLoading: inferenceService.isModelLoading,
                            error: inferenceService.lastError,
                            isSafeMode: inferenceService.safeModeActive,
                            onLoad: () => inferenceService.loadModel("gemma-4-E2B-it.litertlm"),
                          ),

                          const SizedBox(height: 16),

                          // Secondary Model Card 2: BrahmAI 5B (Available for download/addition)
                          _buildModelCard(
                            title: "BrahmAI · 5B",
                            subtitle: "3.2 GB · larger context · better reasoning",
                            isActive: false,
                            addLabel: t('add'),
                            tags: ["~9 tok/s", "Q4_K_M", _getLanguageTag(languageService.selectedLanguage)],
                            hasAddButton: true,
                          ),

                          const SizedBox(height: 32),

                          // Local Storage Usage Breakdown Section Container
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEDE9D0),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      t('storage_used'),
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        letterSpacing: 1.2,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      "1.27 / 8 GB",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),

                                // Storage Progress Bar Indicator
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: LinearProgressIndicator(
                                    value: 0.16,
                                    minHeight: 8,
                                    backgroundColor: Colors.grey.shade300,
                                    valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFD35400)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  /// Helper utility to construct language model tags matching current locale profile
  String _getLanguageTag(String language) {
    if (language == "English") return "14 langs";
    return "15 langs (+ $language)";
  }

  void _showSettings(BuildContext context, LlmInferenceService inferenceService) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFFF5F5F0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return ListenableBuilder(
          listenable: inferenceService,
          builder: (context, _) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Library Settings",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "GPU Acceleration",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Enable OpenCL (requires device support)",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      Switch(
                        value: inferenceService.useGpu,
                        activeColor: const Color(0xFFD35400),
                        onChanged: (val) {
                          inferenceService.setUseGpu(val);
                          // Clear loaded state if switching so user can reload with new setting
                          if (inferenceService.isModelLoaded) {
                            inferenceService.loadModel("gemma-4-E2B-it.litertlm");
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (inferenceService.safeModeActive)
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blue.withOpacity(0.3)),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.info_outline, size: 16, color: Colors.blue),
                          SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              "Safe Mode Active: App is running in CPU mode for maximum compatibility.",
                              style: TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 32),
                ],
              ),
            );
          },
        );
      },
    );
  }

  /// Helper widget to build interactive filter chip elements
  Widget _buildFilterChip(String label, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: isSelected ? Colors.black : Colors.grey.shade300),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black87,
          fontSize: 14,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  /// Helper widget to build individual AI Model card components with customizable states
  Widget _buildModelCard({
    required String title,
    required String subtitle,
    required bool isActive,
    required List<String> tags,
    String? activeLabel,
    String? addLabel,
    bool hasAddButton = false,
    bool hasDownloadButton = false,
    DownloadStatus status = DownloadStatus.idle,
    double downloadProgress = 0.0,
    VoidCallback? onDownload,
    // Inference States
    bool isLoaded = false,
    bool isLoading = false,
    String? error,
    VoidCallback? onLoad,
    bool isSafeMode = false,
  }) {
    final isDownloading = status == DownloadStatus.downloading;
    final isValidating = status == DownloadStatus.validating;
    final isComplete = status == DownloadStatus.complete;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFFCE9E0) : const Color(0xFFEDE9D0),
        borderRadius: BorderRadius.circular(24),
        border: (isActive || isLoaded) ? Border.all(color: const Color(0xFFD35400).withOpacity(0.5)) : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              if (hasDownloadButton && !isComplete)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (isDownloading || isValidating) ? null : onDownload,
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: (isDownloading || isValidating) ? Colors.grey : const Color(0xFFD35400),
                          ),
                          color: (isDownloading || isValidating) ? Colors.grey.withOpacity(0.1) : null,
                        ),
                        child: Text(
                          isDownloading 
                            ? "${(downloadProgress * 100).toInt()}% DOWNLOADED" 
                            : isValidating ? "VALIDATING..." : "DOWNLOAD",
                          style: TextStyle(
                            color: (isDownloading || isValidating) ? Colors.grey : const Color(0xFFD35400), 
                            fontSize: 10, 
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              
              // Load Logic: Only show if download is complete and not already loaded/loading
              if (isComplete && !isLoaded && !isLoading)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: onLoad,
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFFD35400),
                        ),
                        child: const Text(
                          "LOAD",
                          style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),

              if (isLoading)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: const SizedBox(
                    width: 12,
                    height: 12,
                    child: CircularProgressIndicator(strokeWidth: 2, color: Color(0xFFD35400)),
                  ),
                ),

              if (isLoaded)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: isSafeMode ? Colors.blue.shade800 : const Color(0xFFD35400),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    isSafeMode ? "ACTIVE" : "ACTIVE",
                    style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),

              if (isComplete && !isLoaded && !isLoading)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "READY",
                    style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              if (isActive && activeLabel != null && !isDownloading && !isValidating && !isComplete && !isLoaded)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD35400),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    activeLabel,
                    style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              if (hasAddButton && addLabel != null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: Text(
                    addLabel,
                    style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),

          if (isDownloading || isValidating || isLoading) ...[
            ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: LinearProgressIndicator(
                value: isDownloading ? (downloadProgress >= 0 ? downloadProgress : null) : null,
                minHeight: 4,
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(
                  isValidating ? Colors.blue : const Color(0xFFD35400),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],

          if (isComplete && !isLoading) ...[
            const SizedBox(height: 12),
          ],

          if (error != null) ...[
            Text(
              "Error: $error",
              style: const TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
          ],

          // Model Specification Tags - Wrapped to prevent overflow
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: tags.map((tag) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Text(
                  tag,
                  style: const TextStyle(color: Colors.black87, fontSize: 12),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
