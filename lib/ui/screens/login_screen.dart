

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_wallet/utils/colors_code.dart';

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
    return  Scaffold(
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
            child:   Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 353,
                    child: TextFormField(
                      controller: _usernameController,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorsCode.whiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintMaxLines: 1,
                        hintText:
                        "Username or Email",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: ColorsCode.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  SizedBox(
                    width: 353,
                    child: TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorsCode.whiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintMaxLines: 1,
                        hintText:
                        "Password",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: ColorsCode.blackColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
