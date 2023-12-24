import 'package:flutter/material.dart';
import 'package:practice_flutter/pages/home_page.dart';
import 'package:practice_flutter/pages/login_page.dart';
import 'package:practice_flutter/utils/routes.dart';
import 'package:practice_flutter/widgets/theme.dart';

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
      theme: MyTheme.lightTheme(context),
      initialRoute: "login",
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.homeRoutes: (context) => const HomePage(),
        MyRoutes.loginRoutes: (context) => const LoginPage()
      },
    );
  }


