import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData get lightTheme => ThemeData(
      fontFamily: 'Inter',
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
        primary: Color(0xFF42B4CA),
        secondary: Color(0xFFD5E9ED),
        onSurface: Color(0xFF414A4C),
        surface: (Colors.white),
        error: Color(0xFFEA7979),
        tertiary: Color(0xFFB5C4C7),
      ),
      iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(foregroundColor: Color(0xFF42B4CA))));
}
