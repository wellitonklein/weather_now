import 'package:http/http.dart' as http;

class AppAdapter {
  const AppAdapter._();

  static final client = http.Client();
}
