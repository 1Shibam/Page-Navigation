// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class contacts extends StatefulWidget {
  const contacts({super.key});

  @override
  State<contacts> createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contacts',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: const Center(
        child: Text(
          'Your Contacts Will Appear here!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
