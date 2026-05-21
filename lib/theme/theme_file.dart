import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.lightBlue, // Sets global background color
    foregroundColor: Colors.white,      // Sets default color for icons and text
    elevation: 0,                       // Removes the shadow
    centerTitle: true,                  // Centers the title by default
    titleTextStyle: TextStyle(          // Custom style for the title text
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
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
  textTheme: TextTheme(
    // h1
    displayLarge: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    // h3
    bodyLarge: const TextStyle(fontSize: 18, color: Colors.black87),
    // h4
    bodyMedium: const TextStyle(fontSize: 16, color: Colors.black54),
    // h5
    labelMedium: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    bodySmall: GoogleFonts.abel(
      fontSize: 16,
      fontWeight: FontWeight.w100
    ),
  ),
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(

    backgroundColor: Colors.lightBlue,
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.white54,
  )
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.indigo,
  navigationRailTheme: NavigationRailThemeData(
    backgroundColor: Colors.redAccent
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.blue,
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.white54,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blueAccent, // Sets global background color
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
      backgroundColor: Colors.deepPurple,
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
