import 'package:flutter/material.dart';
import 'package:task_wallet/utils/colors_code.dart';
import '../ui/widget/custom_toast.dart';
import 'auth_service.dart';

void handleRegistration(BuildContext context, TextEditingController usernameController, TextEditingController passwordController) async {
  final success = await AuthService.register(
    usernameController.text.trim(),
    passwordController.text.trim(),
  );

  if (success) {
    _showSnackBar(context, 'User registered successfully!',ColorsCode.BLUE);

  }  else {
    _showSnackBar(context,   'Registration failed!',ColorsCode.RED);

  }

}

void _showSnackBar(BuildContext context, String message, Color backColor) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds:2),
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: CustomToast(
        backColor: backColor,
        message: message,
        svgIconPath: 'asset/icons/fail_icon.svg',
      ),
    ),
  );
}