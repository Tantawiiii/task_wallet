import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_wallet/utils/colors_code.dart';

import '../ui/screens/home_screen.dart';
import '../ui/widget/custom_toast.dart';
import 'auth_service.dart';

void handleLogin(BuildContext context, TextEditingController usernameController,
    TextEditingController passwordController) async {
  final success = await AuthService.login(
    usernameController.text.trim(),
    passwordController.text.trim(),
  );
  if (success) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(
          username: usernameController.text.trim(),
        ),
      ),
    );
  } else {
    _showSnackBar(context, 'Login failed!');
  }
}

void _showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: CustomToast(
        backColor: ColorsCode.RED,
        message: message,
        svgIconPath: 'asset/icons/fail_icon.svg',
      ),
    ),
  );
}
