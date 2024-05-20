import 'package:flutter/material.dart';
import 'package:task_wallet/presentation/ui/widget/show_snackbar.dart';
import 'package:task_wallet/utils/colors_code.dart';
import '../../ui/widget/custom_toast.dart';

import 'auth_service.dart';

void handleRegistration(
    BuildContext context,
    TextEditingController usernameController,
    TextEditingController passwordController) async {


  if (usernameController.text.isNotEmpty && passwordController.text.isNotEmpty) {


    final success = await AuthService.register(
      usernameController.text.trim(),
      passwordController.text.trim(),
    );

    if (success) {
      showCustomSnackBar(
          context, "User registered successfully!", Colors.blue, "");
    } else {
      showCustomSnackBar(context, "Credentials are incorrect when Register!",
          Colors.red, 'asset/icons/fail_icon.svg');
    }

  }  else {
    showCustomSnackBar(context, "Please Enter your data to register", Colors.red,
        'asset/icons/fail_icon.svg');
  }

}
