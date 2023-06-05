import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Expanded(
        child: ListView(children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Gabriel'),
            accountEmail: const Text('gabriel@gmail.com'),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.asset('assets/images/icon.png'),
            )),
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            subtitle: const Text('tela de inicio'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Logout'),
            subtitle: const Text('tela de login'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ]),
      ),
    );
  }
}
