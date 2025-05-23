import 'package:injectable/injectable.dart';

@LazySingleton()
class SessionManager {
  String? _token;
  String? _userId;

  void saveSession(String token, String userId) {
    _token = token;
    _userId = userId;
  }

  String? get token => _token;
  String? get userId => _userId;

  bool get isLoggedIn => _token != null && _userId != null;

  void clearSession() {
    _token = null;
    _userId = null;
  }
}
