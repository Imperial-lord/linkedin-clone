import 'package:flutter/material.dart';
import 'package:linkedin_clone/stores/login_store.dart';
import 'package:provider/provider.dart';

Widget loginButton(
    String text, String icon, Function onPressedHandler, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: ElevatedButton(
      onPressed: () => onPressedHandler(),
      style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, height: 24),
          const SizedBox(width: 15),
          Text(
            text,
            style: Theme.of(context).primaryTextTheme.subtitle1,
          ),
        ],
      ),
    ),
  );
}

Widget loginScreenButtons(BuildContext context) {
  void googleLoginHandler() {
    print('Google Login');
    Provider.of<LoginStore>(context, listen: false).signInWithGoogle(context);
  }

  void githubLoginHandler() {
    print('GitHub Login');
    Provider.of<LoginStore>(context, listen: false).signInWithGithub(context);
  }

  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      loginButton('Continue with Google', 'assets/icon/google.png',
          googleLoginHandler, context),
      loginButton('Continue with GitHub', 'assets/icon/github.png',
          githubLoginHandler, context)
    ],
  );
}
