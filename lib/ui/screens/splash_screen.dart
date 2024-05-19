import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task_wallet/utils/strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Lottie.asset(
          'asset/anim/anim_rocket.json',
          repeat: true,
          height: 450,
          fit: BoxFit.fitHeight,
          onLoaded: (composition) {
            Future.delayed(const Duration(milliseconds: 2700), () {
              Navigator.pushReplacementNamed(
                context,
                loginScreenRoute,
              );
            });
          },
        ),
      ),
    );
  }
}
