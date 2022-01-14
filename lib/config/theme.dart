import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
    colorScheme: const ColorScheme(
      primary:  Color(0xFFFE3C5B),
      background:  Color(0xFFF5F5F5),
      onPrimary:  Colors.white,
      secondary: Color(0xFFFC0028),
      error: Colors.red,
      onSurface: Colors.white,
      surface: Colors.black,
      primaryVariant: Color(0xFFFE9AAA),
      secondaryVariant: Color(0xFFFE9AAA),
      onBackground: Colors.black,
      brightness:  Brightness.light,
      onError: Colors.red,
      onSecondary: Colors.white,
    ),
 fontFamily: 'Futura',
    textTheme: const TextTheme(
        headline1: TextStyle(
            color: Color(0xFF1B070B),
          fontWeight: FontWeight.bold,
          fontSize: 36
        ),
      headline2: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.bold,
          fontSize: 24
      ),
      headline3: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.bold,
          fontSize: 18
      ),
      headline4: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.bold,
          fontSize: 16
      ),
      headline5: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.bold,
          fontSize: 14
      ),
      headline6: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.normal,
          fontSize: 14
      ),
      bodyText1: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.normal,
          fontSize: 12
      ),
      bodyText2: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.normal,
          fontSize: 10
      ),
    )
  );
}
/*
primaryDark: const Color(0xFFFC0028),
primaryColorLight: const Color(0xFFFE9AAA),
scaffoldBackgroundColor: Colors.white,
backgroundColor: const Color(0xFFF5F5F5),*/