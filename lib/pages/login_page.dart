import 'package:first_app/pages/home_page.dart';
import 'package:first_app/utils/myroutes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "images/login_page.jpg",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text("welcome",
              // name =
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'UserName', hintText: 'Enter Username'),
                  // onChanged: (value) {
                  //   name = value;
                  //   setState(() {});
                  // }
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Password', hintText: 'Enter Password'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      changeButton = true;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: 40,
                    width: changeButton ? 50 : 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ),
                ),
                // ElevatedButton(child:
                // const Text('Login'),
                // onPressed: () {
                //   // print("hello");
                // //  Navigator.pushNamed(context, MyRoutes.homeRoutes);
                // },
                // ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
