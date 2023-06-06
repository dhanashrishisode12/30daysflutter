import 'package:first_app/widgets/drawers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "codepure";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catlog App",
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal)),
      ),
      body: Center(
        child: Container(
          child: const Text("welcome to $days days flutter by $name "),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
