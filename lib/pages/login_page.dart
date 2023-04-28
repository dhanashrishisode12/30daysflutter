import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/images/login_page.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
