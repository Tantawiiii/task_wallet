import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class AuthService {
  static Future<bool> register(String username, String password) async {
    final user = ParseUser(username, password,null);
    final response = await user.signUp(allowWithoutEmail: true);
    if (response.success) {
      print('User registered successfully');
      return true;
    } else {
      print('Registration failed: ${response.error?.message}');
      return false;
    }
  }

  static Future<bool> login(String username, String password) async {
    final user = ParseUser(username, password, null);
    final response = await user.login();
    if (response.success) {
      return true;
    } else {
      print('Login failed: ${response.error?.message}');
      return false;
    }
  }
}