import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0.0),
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(color: Color.fromARGB(255, 7, 127, 255)),
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Dhanashri"),
                accountEmail: Text("dhanashrishisode17@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/login_page.jpg"),
                )),
          ),
          ListTile(
            title: const Text("Item1"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            trailing: const Icon(CupertinoIcons.airplane),
            title: const Text("Item 2"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text("Item 3"),
            subtitle: const Text(
              "om",
              style: TextStyle(color: Colors.white),
            ),
            tileColor: Colors.blue,
            leading: const Icon(Icons.person),
            onLongPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
