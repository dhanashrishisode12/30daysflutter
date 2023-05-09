import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset(
          "images/login_page.jpg",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20.0,
        ),
        const Text("welcome",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        const SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 8.0),
          child: Column(children: [
            TextFormField(
            decoration: const InputDecoration(
                labelText: 'UserName', hintText: 'Enter Username'),
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: 'Password', hintText: 'Enter Password'),
          ),
          ],
        
          ),
        ),
      ]),
    );
    
  }
}
