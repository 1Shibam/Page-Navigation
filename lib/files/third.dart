import 'package:flutter/material.dart';
import 'package:clearing_basics_again/files/mail.dart';
import 'package:clearing_basics_again/files/pay.dart';
import 'package:clearing_basics_again/files/poeples.dart';
import 'package:clearing_basics_again/files/setting.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 40,
                    )),
              ),
              const Text(
                'Third Page',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
