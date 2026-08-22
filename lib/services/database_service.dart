import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'storage_management_service.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();
  factory DatabaseService() => _instance;
  DatabaseService._internal();

  final Map<String, Database> _databases = {};

  final List<String> pillars = [
    "General",
    "Operational",
    "Personal Counsel",
    "Workplace",
    "Culture & Family",
    "Defence",
    "Global Assistant",
  ];

  Future<void> init() async {
    await _getSharedDatabase(); // Initialize shared DB first
    for (var pillar in pillars) {
      await _getDatabase(pillar);
    }
  }

  Future<Database> _getSharedDatabase() async {
    if (_databases.containsKey('shared')) {
      return _databases['shared']!;
    }

    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'databases', 'shared.db');

    final db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE prompts(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, text TEXT, isFavorite INTEGER DEFAULT 0, associatedPillars TEXT, timestamp INTEGER)',
        );
      },
    );

    _databases['shared'] = db;
    return db;
  }

  Future<Database> _getDatabase(String pillar) async {
    if (_databases.containsKey(pillar)) {
      return _databases[pillar]!;
    }

    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'databases', '${_pillarToFileName(pillar)}.db');

    final db = await openDatabase(
      path,
      version: 2,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE messages(id INTEGER PRIMARY KEY AUTOINCREMENT, role TEXT, text TEXT, timestamp INTEGER, sessionId TEXT)',
        );
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          await db.execute('ALTER TABLE messages ADD COLUMN sessionId TEXT');
        }
      },
    );

    _databases[pillar] = db;
    return db;
  }

  String _pillarToFileName(String pillar) {
    return pillar.toLowerCase().replaceAll(' & ', '_').replaceAll(' ', '_');
  }

  Future<void> saveMessage(String pillar, String role, String text, String sessionId) async {
    final db = await _getDatabase(pillar);
    await db.insert(
      'messages',
      {
        'role': role,
        'text': text,
        'timestamp': DateTime.now().millisecondsSinceEpoch,
        'sessionId': sessionId,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    StorageManagementService().refresh(); // Update storage metrics
  }

  Future<List<Map<String, dynamic>>> getMessages(String pillar, {String? sessionId}) async {
    final db = await _getDatabase(pillar);
    if (sessionId != null) {
      return await db.query(
        'messages', 
        where: 'sessionId = ?', 
        whereArgs: [sessionId], 
        orderBy: 'timestamp ASC'
      );
    }
    return await db.query('messages', orderBy: 'timestamp ASC');
  }

  Future<List<Map<String, dynamic>>> getSessions(String pillar) async {
    final db = await _getDatabase(pillar);
    return await db.rawQuery('''
      SELECT sessionId, text, MIN(timestamp) as min_ts 
      FROM messages 
      WHERE role = 'user' 
      GROUP BY sessionId 
      ORDER BY min_ts DESC
    ''');
  }

  Future<void> clearHistory(String pillar) async {
    final db = await _getDatabase(pillar);
    await db.delete('messages');
  }

  // --- Prompt Library Methods ---

  Future<int> insertPrompt(Map<String, dynamic> prompt) async {
    final db = await _getSharedDatabase();
    return await db.insert('prompts', prompt, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Map<String, dynamic>>> getPrompts() async {
    final db = await _getSharedDatabase();
    return await db.query('prompts', orderBy: 'timestamp DESC');
  }

  Future<void> deletePrompt(int id) async {
    final db = await _getSharedDatabase();
    await db.delete('prompts', where: 'id = ?', whereArgs: [id]);
  }

  Future<void> updatePromptFavorite(int id, bool isFavorite) async {
    final db = await _getSharedDatabase();
    await db.update(
      'prompts', 
      {'isFavorite': isFavorite ? 1 : 0}, 
      where: 'id = ?', 
      whereArgs: [id]
    );
  }
}
