/// Base URL for the local RedBull API server.
///
/// The Node server is running on the same Android device in Termux.
class ApiConfig {
  static const String baseUrl = 'http://127.0.0.1:8277';

  static Uri uri(String path, [Map<String, String>? query]) {
    final normalized = path.startsWith('/') ? path : '/$path';
    return Uri.parse('$baseUrl$normalized').replace(queryParameters: query);
  }
}
