import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurple, // Sets global background color
    foregroundColor: Colors.white,      // Sets default color for icons and text
    elevation: 0,                       // Removes the shadow
    centerTitle: true,                  // Centers the title by default
    titleTextStyle: TextStyle(          // Custom style for the title text
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
  ),
  // Define OutlinedButton style
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: Colors.blue),
    ),
  ),
  textTheme: const TextTheme(
    // h1
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    // h3
    bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
    // h4
    bodyMedium: TextStyle(fontSize: 16, color: Colors.black54),
    // h5
    labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
  ),
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.indigo,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurple, // Sets global background color
    foregroundColor: Colors.white,      // Sets default color for icons and text
    elevation: 0,                       // Removes the shadow
    centerTitle: true,                  // Centers the title by default
    titleTextStyle: TextStyle(          // Custom style for the title text
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
  ),
  // Define OutlinedButton style
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: Colors.blue),
    ),
  ),
  textTheme: const TextTheme(
    // h1
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    // h3
    bodyLarge: TextStyle(fontSize: 18, color: Colors.white70),
    // h4
    bodyMedium: TextStyle(fontSize: 16, color: Colors.white54),
    // h5
    labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
  ),
);
