// ignore_for_file: unused_field

import 'package:clearing_basics_again/files/second.dart';
import 'package:flutter/material.dart';
import 'pay.dart';
import 'poeples.dart';
import 'mail.dart';
import 'setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Flutter Page Navigation',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu Option',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Setting()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text('Mail'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const mails()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text('Payment'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const payment()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Contacts'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const contacts()));
              },
            )
          ],
        ),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'First Page',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Second()));
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      size: 40,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
