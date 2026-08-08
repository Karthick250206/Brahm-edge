import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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

  @override
  Widget build(BuildContext context) {
    final downloadService = ModelDownloadService();

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
          backgroundColor: const Color(0xFFF5F5F0),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  // Main Headline
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Serif',
                      ),
                      children: [
                        TextSpan(text: "Bringing\nBrahmAI "),
                        TextSpan(
                          text: "home.",
                          style: TextStyle(
                            color: Color(0xFFD35400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "One-time. After this, we never touch your data again.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Main Model Card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8F3EF),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: const Color(0xFF00796B).withOpacity(0.3)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BrahmAI · base",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "2.0 B params · Q4_K_M · v0.9",
                                  style: TextStyle(
                                    color: Colors.grey,
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
                                  border: Border.all(color: const Color(0xFF00796B)),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.check, size: 12, color: Color(0xFF00796B)),
                                    SizedBox(width: 4),
                                    Text(
                                      "Ready",
                                      style: TextStyle(
                                        color: Color(0xFF00796B),
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
                            backgroundColor: Colors.white,
                            color: const Color(0xFF00796B),
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
                              style: const TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            if (!isComplete)
                              Text(
                                isValidating ? "Validating..." : "${(progress * 100).toInt()}%",
                                style: const TextStyle(
                                  color: Color(0xFF00796B),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        // Stats Badges
                        Row(
                          children: [
                            _buildStatBadge("~18 tok/s"),
                            const SizedBox(width: 8),
                            _buildStatBadge("~140 ms TTFT"),
                            const SizedBox(width: 8),
                            _buildStatBadge("14 languages"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  if (isError) ...[
                    const SizedBox(height: 16),
                    Text(
                      "Error: ${downloadService.error ?? 'Unknown error'}",
                      style: const TextStyle(color: Colors.red, fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () => downloadService.downloadModel(_modelUrl, _modelFileName),
                      child: const Text("Retry Download"),
                    ),
                  ],

                  const Spacer(),

                  // Final CTA Button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: isComplete 
                        ? () async {
                            await context.read<SecurityProvider>().setOnboarded(true);
                            if (mounted) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => const MainWrapper()),
                                (route) => false,
                              );
                            }
                          }
                        : (isDownloading || isValidating) 
                          ? null 
                          : () => downloadService.downloadModel(_modelUrl, _modelFileName),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD35400),
                        disabledBackgroundColor: const Color(0xFFD35400).withOpacity(0.5),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            isComplete ? "Open BrahmAI" : "Download Model",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
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
  }

  Widget _buildStatBadge(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.black87, fontSize: 11),
      ),
    );
  }
}
