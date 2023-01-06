import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static const Color secondary = Colors.green;
  static const Color white = Colors.white;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    primaryColor: primary,
    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      foregroundColor: white,
      elevation: 0,
      centerTitle: true,
    ),
  );
}
