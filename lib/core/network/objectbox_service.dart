import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import '../../features/home/data/models/local_model/objectbox.g.dart';

class ObjectBoxService {
  static late Store _store;
  static bool _isInitialized = false;

  /// Initialize ObjectBox store
  static Future<void> init() async {
    if (_isInitialized) return;

    // Get the application documents directory
    final documentsDir = await getApplicationDocumentsDirectory();
    final storeDir = Directory(path.join(documentsDir.path, "weather-db"));

    // Create directory if it doesn't exist
    if (!await storeDir.exists()) {
      await storeDir.create(recursive: true);
    }

    try {
      _store = await openStore(directory: storeDir.path);
      _isInitialized = true;
    } catch (e) {
      // If there's a schema mismatch, delete the old database and recreate
      if (e.toString().contains('UID') || e.toString().contains('entity ID')) {
        await storeDir.delete(recursive: true);
        await storeDir.create(recursive: true);
        _store = await openStore(directory: storeDir.path);
        _isInitialized = true;
      } else {
        rethrow;
      }
    }
  }

  /// Generic CRUD operations

  /// Add entity
  static Future<int> add<T>(T entity) async {
    if (!_isInitialized) await init();
    final box = _store.box<T>();
    return box.put(entity);
  }

  /// Get entity by ID
  static T? get<T>(int id) {
    final box = _store.box<T>();
    return box.get(id);
  }

  /// Get all entities
  static List<T> getAll<T>() {
    final box = _store.box<T>();
    return box.getAll();
  }

  /// Update entity
  static Future<bool> update<T>(T entity) async {
    final box = _store.box<T>();
    return box.put(entity) > 0;
  }

  /// Delete entity by ID
  static Future<bool> delete<T>(int id) async {
    final box = _store.box<T>();
    return box.remove(id);
  }

  /// Delete all entities
  static Future<void> deleteAll<T>() async {
    final box = _store.box<T>();
    box.removeAll();
  }

  /// Search entities
  static List<T> search<T>(bool Function(T) condition) {
    final box = _store.box<T>();
    final allData = box.getAll();
    return allData.where(condition).toList();
  }
}
