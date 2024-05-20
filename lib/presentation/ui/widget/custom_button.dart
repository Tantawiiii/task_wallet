import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:motion/motion.dart';
import 'package:task_wallet/utils/colors_code.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double height;
  final double width;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text, required this.height, required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Motion(
      child: Bounce(
        filterQuality: FilterQuality.high,
        onTap: onPressed,
        duration: const Duration(milliseconds: 1000),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            color: ColorsCode.BLUE,
            shape: BoxShape.rectangle,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: ColorsCode.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
