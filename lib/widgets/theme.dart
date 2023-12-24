import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) =>
    ThemeData(
        appBarTheme: const AppBarTheme(
            color: Colors.deepPurpleAccent,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(color: Colors.white,
                fontSize: 20)
        )
    );
  }
