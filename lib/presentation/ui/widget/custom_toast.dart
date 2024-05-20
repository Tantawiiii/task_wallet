import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomToast extends StatelessWidget {
  final String svgIconPath;
  final String message;
  final Color backColor;

  CustomToast({super.key, required this.svgIconPath, required this.message, required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6.0,
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              svgIconPath,
              height: 24.0,
              color: Colors.white,
            ),
            const SizedBox(width: 12.0),
            Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
