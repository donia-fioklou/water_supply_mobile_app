import 'dart:io';

import 'package:flutter/material.dart';
import 'package:water_supply/views/client_page.dart';
import 'package:water_supply/views/commande_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: FlutterLogo(size: 42.0),
      ),
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: const Text('Client'),
          onTap: () => Navigator.of(context).push(Client()),
        ),
        ListTile(
          title: const Text('Commande'),
          onTap: () => Navigator.of(context).push(Commande()),
        ),
        ListTile(title: const Text('Quitter'), onTap: () => {}),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(''),
      ),
      body: Center(child: ClientPage()),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}

class Client extends MaterialPageRoute<Widget> {
  Client()
      : super(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Client'),
                elevation: 1.0,
              ),
              body: Center(child: ClientPage()),
            );
          },
        );
}

class Commande extends MaterialPageRoute<Widget> {
  Commande()
      : super(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Commande'),
                elevation: 1.0,
              ),
              body: Center(child: CommandePage()),
            );
          },
        );
}
