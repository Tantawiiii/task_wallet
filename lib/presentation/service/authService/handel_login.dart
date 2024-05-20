import 'package:flutter/material.dart';

import '../../ui/screens/home_screen.dart';
import '../../ui/widget/show_snackbar.dart';
import 'auth_service.dart';

void handleLogin(BuildContext context, TextEditingController usernameController,
    TextEditingController passwordController) async {

  if (usernameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
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
      showCustomSnackBar(context, "Credentials are incorrect when Login!", Colors.red,
          'asset/icons/fail_icon.svg');
    }


  }  else {
    showCustomSnackBar(context, "Please Enter your data", Colors.red,
        'asset/icons/fail_icon.svg');
  }





}

