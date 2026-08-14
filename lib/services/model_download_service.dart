import 'dart:io';
import 'package:flutter/material.dart';
import 'package:background_downloader/background_downloader.dart';
import 'package:crypto/crypto.dart';
import 'package:path_provider/path_provider.dart';
import 'storage_management_service.dart';

enum DownloadStatus { idle, downloading, validating, complete, error }

/// [ModelDownloadService] handles robust background downloading and validation of AI models.
/// It uses the [FileDownloader] to ensure downloads continue seamlessly when the app is switched.
class ModelDownloadService extends ChangeNotifier {
  // Singleton pattern
  static final ModelDownloadService _instance = ModelDownloadService._internal();
  factory ModelDownloadService() => _instance;
  
  ModelDownloadService._internal() {
    _init();
  }

  DownloadStatus _status = DownloadStatus.idle;
  DownloadStatus get status => _status;

  bool get isDownloading => _status == DownloadStatus.downloading;

  double _downloadProgress = 0.0;
  double get downloadProgress => _downloadProgress;

  String? _error;
  String? get error => _error;

  String? _expectedHash;

  DateTime _lastNotifyTime = DateTime.fromMillisecondsSinceEpoch(0);

  /// Initializes the downloader, listens for updates, and checks for existing models.
  Future<void> _init() async {
    // Configure system notifications for background visibility
    FileDownloader().configureNotification(
      running: const TaskNotification('ZiqeXAI Model', 'Downloading: {progress}'),
      complete: const TaskNotification('Download Complete', 'The model is ready for on-device AI.'),
      error: const TaskNotification('Download Failed', 'Please check your connection and try again.'),
      progressBar: true,
      tapOpensFile: false,
    );

    FileDownloader().updates.listen((update) {
      if (update is TaskProgressUpdate) {
        _downloadProgress = update.progress;
        _status = DownloadStatus.downloading;
        
        // Increase throttle to 1s to further prevent BLASTBufferQueue rendering bottlenecks on mobile
        final now = DateTime.now();
        if (now.difference(_lastNotifyTime).inMilliseconds > 1000 || _downloadProgress == 1.0) {
          _lastNotifyTime = now;
          notifyListeners();
        }
      } else if (update is TaskStatusUpdate) {
        _handleStatusUpdate(update);
      }
    });

    // Check for existing models on startup
    await _checkExistingModels();
  }

  /// Scans the application directory to see if models are already present.
  Future<void> _checkExistingModels() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final modelsDir = Directory("${directory.path}/models");
      
      if (await modelsDir.exists()) {
        final files = await modelsDir.list().toList();
        // If we find any model file, mark as complete for now 
        // (In production, we'd check for specific expected filenames)
        if (files.any((f) => f.path.endsWith('.litertlm') || f.path.endsWith('.bin'))) {
          debugPrint("[ZiqeXAI] Found existing model file on disk.");
          _status = DownloadStatus.complete;
          _downloadProgress = 1.0;
          notifyListeners();
        }
      }
    } catch (e) {
      debugPrint("[ZiqeXAI] Error checking disk for models: $e");
    }
  }

  void _handleStatusUpdate(TaskStatusUpdate update) {
    switch (update.status) {
      case TaskStatus.enqueued:
      case TaskStatus.running:
        _status = DownloadStatus.downloading;
        break;
      case TaskStatus.complete:
        _downloadProgress = 1.0;
        _onDownloadComplete(update.task as DownloadTask);
        break;
      case TaskStatus.failed:
        _status = DownloadStatus.error;
        _error = "Download failed";
        break;
      case TaskStatus.canceled:
        _status = DownloadStatus.idle;
        _downloadProgress = 0.0;
        break;
      case TaskStatus.notFound:
        _status = DownloadStatus.error;
        _error = "File not found";
        break;
      case TaskStatus.waitingToRetry:
        _status = DownloadStatus.downloading;
        break;
      case TaskStatus.paused:
        break;
    }
    notifyListeners();
  }

  /// Triggered when the native download finishes.
  Future<void> _onDownloadComplete(DownloadTask task) async {
    _status = DownloadStatus.validating;
    notifyListeners();

    try {
      final path = await task.filePath();
      
      // Verification logic
      bool isValid = await _verifyChecksum(path, _expectedHash);
      
      if (isValid) {
        _status = DownloadStatus.complete;
        StorageManagementService().refresh(); // Update storage metrics
      } else {
        _status = DownloadStatus.error;
        _error = "Checksum verification failed. The file may be corrupt.";
      }
    } catch (e) {
      _status = DownloadStatus.error;
      _error = e.toString();
    }
    notifyListeners();
  }

  /// Verifies the SHA-256 checksum of the downloaded file.
  Future<bool> _verifyChecksum(String filePath, String? targetHash) async {
    try {
      final file = File(filePath);
      if (!await file.exists()) return false;

      final bytes = file.openRead();
      final digest = await sha256.bind(bytes).first;
      final actualHash = digest.toString();
      
      debugPrint("File Checksum: $actualHash");
      
      if (targetHash != null && targetHash.isNotEmpty) {
        return actualHash.toLowerCase() == targetHash.toLowerCase();
      }
      
      // If no target hash provided, we assume any successful read is valid for now
      return true; 
    } catch (e) {
      debugPrint("Verification error: $e");
      return false;
    }
  }

  /// Starts a background download task.
  Future<void> downloadModel(String url, String fileName, {String? sha256}) async {
    if (_status == DownloadStatus.downloading || _status == DownloadStatus.validating) return;

    _status = DownloadStatus.downloading;
    _downloadProgress = 0.0;
    _error = null;
    _expectedHash = sha256;
    notifyListeners();

    final task = DownloadTask(
      url: url,
      filename: fileName,
      directory: 'models', // Sub-directory in documents
      baseDirectory: BaseDirectory.applicationDocuments,
      updates: Updates.statusAndProgress,
      allowPause: true,
      requiresWiFi: false,
      retries: 3,
      displayName: "ZiqeXAI Model Download",
    );

    // Enqueue the task for background execution
    await FileDownloader().enqueue(task);
  }

  /// Helper to construct Hugging Face download URLs.
  static String getHuggingFaceUrl(String repo, String filePath, {String branch = 'main'}) {
    return "https://huggingface.co/$repo/resolve/$branch/$filePath?download=true";
  }
}
