import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:task_wallet/routes/app_routes.dart';
import 'package:task_wallet/utils/colors_code.dart';
import 'package:task_wallet/utils/strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Parse Platform API and Connect with server
  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
  );

  runApp(Wallet(
    appRouter: AppRouter(),
  ));
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
