import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getTheme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.grey[300],
      primaryColor: Colors.indigo,
      colorScheme: const ColorScheme(
        primary: Colors.indigo,
        secondary: Colors.indigoAccent,
        brightness: Brightness.light,
        onBackground: Colors.grey,
        background: Colors.grey,
        error: Colors.grey,
        onPrimary: Colors.grey,
        onError: Colors.grey,
        onSecondary: Colors.grey,
        onSurface: Colors.grey,
        surface: Colors.grey,
      ),
    );
  }
}