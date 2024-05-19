import 'package:flutter/material.dart';
import 'package:task_wallet/ui/screens/login_screen.dart';
import 'package:task_wallet/ui/screens/splash_screen.dart';

import '../utils/strings.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case loginScreenRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
    return null;
  }
}
