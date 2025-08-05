import 'package:flutter/material.dart';

ThemeData darkmode = ThemeData(
  primaryColor: Colors.white,
  fontFamily: 'Lato',
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Colors.white,
    primary: Colors.blue,
    secondary:  Color(0xFF1D375C), 
    onSurface: Colors.black,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    secondaryFixed: Colors.black,
  ),
  secondaryHeaderColor: Color(0xFF18314F),
  // Override Material 3 defaults to prevent purple colors
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.blue,
    ),
  ),
);

ThemeData lightmode = ThemeData(
  primaryColor: Colors.white,
  fontFamily: 'Lato',
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Colors.black,
    primary: Colors.blue,
    secondary: Color(0xFF1D375C),
    onSurface: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    secondaryFixed: Colors.white,
  ),
      secondaryHeaderColor: Color(0xFF182F4E),
  // Override Material 3 defaults to prevent purple colors
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.blue,
    ),
  ),
);