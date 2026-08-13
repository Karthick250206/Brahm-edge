import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'database_service.dart';

class PillarStorageInfo {
  final String name;
  final int bytes;
  PillarStorageInfo({required this.name, required this.bytes});
}

class ModelFileDetail {
  final String name;
  final int bytes;
  final DateTime installedDate;
  final String path;
  ModelFileDetail({
    required this.name,
    required this.bytes,
    required this.installedDate,
    required this.path,
  });
}

class StorageInfo {
  final int totalBytes;
  final int modelBytes;
  final List<PillarStorageInfo> pillarInfo;
  final List<ModelFileDetail> modelDetails;
  
  StorageInfo({
    required this.totalBytes,
    required this.modelBytes,
    required this.pillarInfo,
    required this.modelDetails,
  });

  double get totalGB => totalBytes / (1024 * 1024 * 1024);
  double get modelGB => modelBytes / (1024 * 1024 * 1024);
  
  static StorageInfo empty() => StorageInfo(totalBytes: 0, modelBytes: 0, pillarInfo: [], modelDetails: []);
}

class StorageManagementService extends ChangeNotifier {
  static final StorageManagementService _instance = StorageManagementService._internal();
  factory StorageManagementService() => _instance;
  StorageManagementService._internal();

  StorageInfo _currentStorage = StorageInfo.empty();
  StorageInfo get currentStorage => _currentStorage;

  bool _isRefreshing = false;
  bool get isRefreshing => _isRefreshing;

  Future<void> refresh() async {
    if (_isRefreshing) return;
    _isRefreshing = true;
    notifyListeners();

    try {
      final docDir = await getApplicationDocumentsDirectory();
      
      // Calculate Model Sizes and Details
      int modelBytes = 0;
      List<ModelFileDetail> modelDetails = [];
      final modelsDir = Directory("${docDir.path}/models");
      if (await modelsDir.exists()) {
        final files = await modelsDir.list(recursive: true).toList();
        for (var file in files) {
          if (file is File) {
            final size = await file.length();
            modelBytes += size;
            
            // Only add valid model extensions to the list
            if (file.path.endsWith('.litertlm') || file.path.endsWith('.bin')) {
              modelDetails.add(ModelFileDetail(
                name: file.path.split('/').last.split('\\').last,
                bytes: size,
                installedDate: await file.lastModified(),
                path: file.path,
              ));
            }
          }
        }
      }

      // Calculate Pillar Database Sizes
      List<PillarStorageInfo> pillarInfo = [];
      int dbTotalBytes = 0;
      final dbService = DatabaseService();
      
      for (var pillar in dbService.pillars) {
        final dbFile = File("${docDir.path}/databases/${_pillarToFileName(pillar)}.db");
        int bytes = 0;
        if (await dbFile.exists()) {
          bytes = await dbFile.length();
        }
        pillarInfo.add(PillarStorageInfo(name: pillar, bytes: bytes));
        dbTotalBytes += bytes;
      }

      _currentStorage = StorageInfo(
        totalBytes: modelBytes + dbTotalBytes,
        modelBytes: modelBytes,
        pillarInfo: pillarInfo,
        modelDetails: modelDetails,
      );
    } catch (e) {
      debugPrint("[StorageService] Error refreshing storage info: $e");
    } finally {
      _isRefreshing = false;
      notifyListeners();
    }
  }

  Future<void> deleteModelFile(String path) async {
    try {
      final file = File(path);
      if (await file.exists()) {
        await file.delete();
        await refresh(); // Update metrics immediately
      }
    } catch (e) {
      debugPrint("[StorageService] Error deleting model file: $e");
      rethrow;
    }
  }

  String _pillarToFileName(String pillar) {
    return pillar.toLowerCase().replaceAll(' & ', '_').replaceAll(' ', '_');
  }
}
