import 'package:flutter/material.dart';

class MyTheme {
  static const Color primario = Color.fromARGB(255, 67, 120, 151);
  static final ThemeData myTheme = ThemeData(
    primaryColor: primario,
    brightness: Brightness.light,
    fontFamily: 'Releway',
    appBarTheme: const AppBarTheme(
      color: primario,
      elevation: 10,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primario)
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: primario),
  );
}