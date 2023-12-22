import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    int days = 30;
    return  MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: const Text("Can I learn flutter in 30 Days"),
          )
        ),
      ),
    );
  }
}
