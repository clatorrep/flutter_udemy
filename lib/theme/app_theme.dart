import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;
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
      // Text Button
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),
      // List Tile
      listTileTheme: const ListTileThemeData(
        iconColor: primary,
      ),
      // Floatin Action Button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 3,
      ),
      // Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: white,
          backgroundColor: primary,
          elevation: 0,
        ),
      ));
}
