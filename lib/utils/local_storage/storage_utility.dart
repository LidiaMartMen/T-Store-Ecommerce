

import 'package:get_storage/get_storage.dart';

class CLocalStorage {


static final CLocalStorage _instance = CLocalStorage._internal();

  factory CLocalStorage() {
    return _instance;
  }

  CLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
      // localStorage.saveData('username', 'JohnDoe');
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
      // String? username = localStorage.readData<String>('username');
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Generic method to remove data
      // localStorage.removeData('username');
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
      // localStorage.clearAll();
  Future<void> clearAll() async {
    await _storage.erase();
  }
}

