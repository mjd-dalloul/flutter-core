abstract class SharedPreferencesKeys {
  static const String ACCESS_TOKEN = 'token';
  static const String REFRESH_TOKEN = 'refresh_token';
  static const String USER_INFO = 'user';
  static const String PHONE = 'phone';
  static const String EMAIL = 'email';
  static const String USERNAME = 'username';
  static const String IS_FIRST_TIME_OPENING_THE_APP = 'is_first_time';
  static const String NOTIFICATION_TOKEN = 'notification_token';
  static const String APP_LANGAUAGE = 'app_language';
  static const String APP_THEME = 'app_language';
  static const String COOKIE_SITE = 'COOKIE';
}

abstract class SupportedLanguage {
  static const String ARABIC = 'ar';
  static const String ENGLISH = 'en';
}

abstract class DefaultValues {
  static const String PROFILE_IMAGE =
      'https://www.techpowerusa.com/wp-content/uploads/2017/06/default-user.png';
  static const String NO_INTERNET_CONNECTION = 'no_internet_connection';
  static const String SERVER_FAILURE = 'server_error';
  static const String UNAUTHENTICATED = 'unauthenticated';
  static const String REQUEST_CANCELLED = 'request_cancelled';
  static const String SOMETHING_WENT_WRONG = 'something_went_wrong';
}

enum HttpRequestTypes {
  GET,
  POST,
  DELETE,
  PATCH,
  PUT,
}

enum ErrorLogType {
  dioError,
  serverFailure,
  requestCancelled,
  customFailure,
  noInternetFailure,
  unauthenticatedFailure,
  unknownError,
  unknownServerError,
  baseBlocError,
  baseViewModelError,
  localDatabaseError,
}
