import 'package:flutter/material.dart';
import 'package:practice_flutter/pages/home_page.dart';
import 'package:practice_flutter/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String yup = "Yes You Can!";
    return MaterialApp(
      initialRoute: "login",
      routes: {
        "/": (context) => const HomePage(),
        "home": (context) => const HomePage(),
        "login": (context) => const LoginPage()
      },
    );
  }
}
