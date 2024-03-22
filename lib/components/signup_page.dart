import 'package:eco_scan/components/signup_button.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';
import 'my_textformfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  //Text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.only(
                    right: 130,
                  ),
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
                  height: 180,
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
                  controller: emailController,
                  hinttext: 'Email',
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
                  height: 25,
                ),
                textformfield(
                  controller: confirmpasswordController,
                  hinttext: 'Confirm Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                SignUpButton(),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "or LOGIN",
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
