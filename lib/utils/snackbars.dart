import 'package:education/data/data.dart';
import 'package:flutter/material.dart';

void showErrorSnackBar(BuildContext context, Failure failure) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Error\n${failure.message}',
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.redAccent,
    ),
  );
}

void showWarningSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Warning\n$message'),
      backgroundColor: Colors.yellowAccent,
    ),
  );
}
