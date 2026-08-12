import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'database_service.dart';

class PillarStorageInfo {
  final String name;
  final int bytes;
  PillarStorageInfo({required this.name, required this.bytes});
}

class StorageInfo {
  final int totalBytes;
  final int modelBytes;
  final List<PillarStorageInfo> pillarInfo;
  
  StorageInfo({
    required this.totalBytes,
    required this.modelBytes,
    required this.pillarInfo,
  });

  double get totalGB => totalBytes / (1024 * 1024 * 1024);
  double get modelGB => modelBytes / (1024 * 1024 * 1024);
  
  static StorageInfo empty() => StorageInfo(totalBytes: 0, modelBytes: 0, pillarInfo: []);
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
      
      // Calculate Model Size
      int modelBytes = 0;
      final modelsDir = Directory("${docDir.path}/models");
      if (await modelsDir.exists()) {
        final files = await modelsDir.list(recursive: true).toList();
        for (var file in files) {
          if (file is File) {
            modelBytes += await file.length();
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
      );
    } catch (e) {
      debugPrint("[StorageService] Error refreshing storage info: $e");
    } finally {
      _isRefreshing = false;
      notifyListeners();
    }
  }

  String _pillarToFileName(String pillar) {
    return pillar.toLowerCase().replaceAll(' & ', '_').replaceAll(' ', '_');
  }
}
