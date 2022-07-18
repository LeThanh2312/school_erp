import 'package:flutter/material.dart';

const String error_default = 'email/password is incorrect';

void showSnackbar(
    BuildContext context, {
      String text = error_default,
    }) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
  ));
}