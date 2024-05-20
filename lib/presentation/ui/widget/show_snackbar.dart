import 'package:flutter/material.dart';
import '../../ui/widget/custom_toast.dart';

void showCustomSnackBar(
    BuildContext context, String message, Color backColor, String iconPath) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: CustomToast(
        backColor: backColor,
        message: message,
        svgIconPath: iconPath,
      ),
    ),
  );
}
