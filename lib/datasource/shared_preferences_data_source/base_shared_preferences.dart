abstract class BaseSharedPreferences {
  Future<bool> saveInt(String key, int value);

  Future<bool> saveString(String key, String value);

  Future<bool> saveDouble(String key, double value);

  Future<bool> saveBool(String key, bool value);

  int? getInt(String key);

  String? getString(String key);

  double? getDouble(String key);

  bool? getBool(String key);

  bool containsKey(String key);

  Future<bool> removeKey(String key);

  Future<bool> clear();
}
