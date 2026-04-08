// api_endpoints.dart
class ApiEndpoints {
  ApiEndpoints._();

  //
  static const String apiKey = 'db1e8b3b-7519-4093-be9c-98f1b4dac72b';
  static const String baseUrl = 'https://api.gladia.io/v2';
  static const String upload = '/upload';
  static const String preRecorded = "/pre-recorded";
  static const String preRecordedById =
      'https://api.gladia.io/v2/pre-recorded/';


  // Auth
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String logout = '/auth/logout';
  static const String refreshToken = '/auth/refresh';

  // User
  static const String profile = '/user/profile';

  // Common
  static String userById(String id) => '/users/$id';
}
