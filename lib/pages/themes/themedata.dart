import 'package:flutter/material.dart';

ThemeData primarytheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xff4157FF),
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 240, 243, 246),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 25, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
    bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
    bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
  ),
);
