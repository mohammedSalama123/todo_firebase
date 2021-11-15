import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightScaffoldBackground = Color(0xffDFECDB);
  static const Color lightAppBarBackground = Color(0xff5D9CEC);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: lightScaffoldBackground,
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: lightAppBarBackground,
      titleTextStyle: TextStyle(
        fontSize: 18,
      ),
    ),
    textTheme: const TextTheme(

      headline1:  TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      subtitle1:  TextStyle(
        fontSize: 16,
        color: Colors.black45
      ),
    ),

  );
  static final ThemeData darkTheme = ThemeData();
}
