import 'package:flutter/material.dart';

import '../../widgets/login/carousel.dart';
import '../../widgets/login/login_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static String id = 'login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icon/linkedin-word.png',
                  scale: 50,
                ),
                const Carousel(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: loginScreenButtons(context),
        ),
      ),
    );
  }
}
