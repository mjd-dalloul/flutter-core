import 'package:flutter_core/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'base_shared_preferences.dart';

class BaseSharedPreferencesImpl implements BaseSharedPreferences {
  BaseSharedPreferencesImpl({required this.sharedPreferences});

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

  String? getAccessToken(String token) =>
      getString(SharedPreferencesKeys.ACCESS_TOKEN);

  String? getRefreshToken(String refreshToken) =>
      getString(SharedPreferencesKeys.REFRESH_TOKEN);

  String? getUserInfo(String userInfoJson) =>
      getString(SharedPreferencesKeys.USER_INFO);

  String? getPhoneNumber(String phoneNumber) =>
      getString(SharedPreferencesKeys.PHONE);

  String? getEmail(String email) => getString(SharedPreferencesKeys.EMAIL);

  String? getUsername(String username) =>
      getString(SharedPreferencesKeys.USERNAME);

  String? getAppLanguage(String appLanguage) =>
      getString(SharedPreferencesKeys.APP_LANGAUAGE);

  String? getCookieSite(String cookie) =>
      getString(SharedPreferencesKeys.COOKIE_SITE);
}
