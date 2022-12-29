import 'package:flutter_core/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'i_base_shared_preferences.dart';

class BaseSharedPreferences implements IBaseSharedPreferences {
  BaseSharedPreferences({required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  @override
  Future<bool> saveBool(String key, bool value) =>
      sharedPreferences.setBool(key, value);

  @override
  Future<bool> saveDouble(String key, double value) =>
      sharedPreferences.setDouble(key, value);

  @override
  Future<bool> saveInt(String key, int value) =>
      sharedPreferences.setInt(key, value);

  @override
  Future<bool> saveString(String key, String value) =>
      sharedPreferences.setString(key, value);

  @override
  bool? getBool(String key) => sharedPreferences.getBool(key);

  @override
  double? getDouble(String key) => sharedPreferences.getDouble(key);

  @override
  int? getInt(String key) => sharedPreferences.getInt(key);

  @override
  String? getString(String key) => sharedPreferences.getString(key);

  @override
  Future<bool> clear() => sharedPreferences.clear();

  @override
  bool containsKey(String key) => sharedPreferences.containsKey(key);

  @override
  Future<bool> removeKey(String key) => sharedPreferences.remove(key);

  Future<bool> saveAccessToken(String token) =>
      saveString(SharedPreferencesKeys.ACCESS_TOKEN, token);

  Future<bool> saveRefreshToken(String refreshToken) =>
      saveString(SharedPreferencesKeys.REFRESH_TOKEN, refreshToken);

  Future<bool> saveUserInfo(String userInfoJson) =>
      saveString(SharedPreferencesKeys.USER_INFO, userInfoJson);

  Future<bool> savePhoneNumber(String phoneNumber) =>
      saveString(SharedPreferencesKeys.PHONE, phoneNumber);

  Future<bool> saveEmail(String email) =>
      saveString(SharedPreferencesKeys.EMAIL, email);

  Future<bool> saveUsername(String username) =>
      saveString(SharedPreferencesKeys.USERNAME, username);

  Future<bool> saveAppLanguage(String appLanguage) =>
      saveString(SharedPreferencesKeys.APP_LANGAUAGE, appLanguage);

  Future<bool> saveCookieSite(String cookie) =>
      saveString(SharedPreferencesKeys.COOKIE_SITE, cookie);

  Future<bool> saveAppTheme(int theme) =>
      saveInt(SharedPreferencesKeys.APP_THEME, theme);

  Future<bool> saveIsFirstTimeOpeningTheApp() =>
      saveBool(SharedPreferencesKeys.IS_FIRST_TIME_OPENING_THE_APP, false);

  String? getAccessToken() => getString(SharedPreferencesKeys.ACCESS_TOKEN);

  String? getRefreshToken() => getString(SharedPreferencesKeys.REFRESH_TOKEN);

  String? getUserInfo() => getString(SharedPreferencesKeys.USER_INFO);

  String? getPhoneNumber() => getString(SharedPreferencesKeys.PHONE);

  String? getEmail() => getString(SharedPreferencesKeys.EMAIL);

  String? getUsername() => getString(SharedPreferencesKeys.USERNAME);

  String? getAppLanguage() => getString(SharedPreferencesKeys.APP_LANGAUAGE);

  String? getCookieSite() => getString(SharedPreferencesKeys.COOKIE_SITE);

  int? getAppTheme() => getInt(SharedPreferencesKeys.APP_THEME);

  bool? getIsFirstTimeOpeningTheApp() =>
      getBool(SharedPreferencesKeys.IS_FIRST_TIME_OPENING_THE_APP);
}
