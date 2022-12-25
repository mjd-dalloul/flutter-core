import 'package:flutter_core/datasource/shared_preferences_data_source/base_shared_preferences_impl.dart';
import 'package:flutter_core/repository/base_repostiroy.dart';

class CommonAppRepository extends BaseRepository {
  CommonAppRepository({
    required this.baseSharedPreferencesImpl,
  });

  final BaseSharedPreferencesImpl baseSharedPreferencesImpl;

  Future<bool> changeLanguage(String languageCode) =>
      baseSharedPreferencesImpl.saveAppLanguage(languageCode);

  String getAppLanguage(String defaultLanguage) =>
      baseSharedPreferencesImpl.getAppLanguage() ?? defaultLanguage;

  Future<bool> changeTheme(int theme) =>
      baseSharedPreferencesImpl.saveAppTheme(theme);

  int getAppTheme(int defaultTheme) =>
      baseSharedPreferencesImpl.getAppTheme() ?? defaultTheme;

  Future<bool> saveIsFirstTimeOpeningTheApp() =>
      baseSharedPreferencesImpl.saveIsFirstTimeOpeningTheApp();

  bool getIsFirstTimeOpeningTheApp() =>
      baseSharedPreferencesImpl.getIsFirstTimeOpeningTheApp() ?? true;
}
