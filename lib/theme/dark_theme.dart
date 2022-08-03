import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: const Color(0xFFffbd5c),
  secondaryHeaderColor: const Color(0xFF009f67),
  disabledColor: const Color(0xffa2a7ad),
  backgroundColor: const Color(0xFF343636),
  errorColor: const Color(0xFFdd3135),
  brightness: Brightness.dark,
  hintColor: const Color(0xFFbebebe),
  cardColor: Colors.black,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFffbd5c),
    secondary: Color(0xFFffbd5c),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: const Color(0xFFffbd5c),
    ),
  ),
);
