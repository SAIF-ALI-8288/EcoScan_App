import 'package:eco_scan/components/signin_button.dart';
import 'package:eco_scan/components/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'my_textformfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  //Text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.orange[700],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Text(
                    "Welcome to",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Text(
                    "EcoScan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset(
                  "assets/images/EcoScan Logo.png",
                  height: 300,
                  width: 300,
                ),
                textformfield(
                  hinttext: 'Username',
                  controller: usernameController,
                  obscureText: false,
                ),
                SizedBox(
                  height: 25,
                ),
                textformfield(
                    controller: passwordController,
                    hinttext: 'Password',
                    obscureText: true),
                SizedBox(
                  height: 30,
                ),
                SignInButton(),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                  child: Text(
                    "or SIGNUP",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
