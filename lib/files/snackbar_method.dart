// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';

void customSnackbar(BuildContext context, String SnakcBarMessage) {
  final snack = SnackBar(
    content: Text(SnakcBarMessage),
    duration: const Duration(seconds: 3),
    action: SnackBarAction(label: 'okay', onPressed: () {}),
  );
  ScaffoldMessenger.of(context).showSnackBar(snack);
}
