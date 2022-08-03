import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: const Color(0xFFEF7822),
  secondaryHeaderColor: const Color(0xFF1ED7AA),
  disabledColor: const Color(0xFFBABFC4),
  backgroundColor: const Color(0xFFF3F3F3),
  errorColor: const Color(0xFFE84D4F),
  brightness: Brightness.light,
  hintColor: const Color(0xFF9F9F9F),
  cardColor: Colors.white,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFEF7822),
    secondary: Color(0xFFEF7822),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(primary: const Color(0xFFEF7822)),
  ),
);
