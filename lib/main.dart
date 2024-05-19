import 'package:flutter/material.dart';
import 'package:task_wallet/routes/app_routes.dart';

void main() {
  runApp( Wallet(appRouter: AppRouter(),));
}

class Wallet extends StatelessWidget {
  const Wallet({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}