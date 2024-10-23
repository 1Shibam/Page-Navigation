// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment',
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
          'Your Payments Will be here!!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
