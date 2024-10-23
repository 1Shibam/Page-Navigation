// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class mails extends StatefulWidget {
  const mails({super.key});

  @override
  State<mails> createState() => _mailsState();
}

class _mailsState extends State<mails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mails',
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
          'Mails Will Appear here!!',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
