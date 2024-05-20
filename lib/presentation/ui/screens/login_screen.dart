import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_wallet/utils/colors_code.dart';
import '../../service/authService/handel_login.dart';
import '../../service/authService/handel_register.dart';
import '../widget/custom_button.dart';
import '../widget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorsCode.whiteBack,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.3,
            child: SvgPicture.asset(
              'asset/icons/arrow_login.svg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            top: 230,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      CustomTextField(
                        controller: _usernameController,
                        hintText: "Username or Email",
                      ),
                      const SizedBox(height: 15),
                      CustomTextField(
                        controller: _passwordController,
                        hintText: "Password",
                      ),
                      const SizedBox(height:200),

                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        onPressed: () => handleRegistration(context, _usernameController, _passwordController),
                        text: 'Register',
                        height: 56,
                        width: 150,
                      ),
                      CustomButton(
                        onPressed: () => handleLogin(context, _usernameController, _passwordController),
                        text: 'Login',
                        height: 56,
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
