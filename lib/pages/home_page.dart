import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Practice App"),),
      ),
      body: const Center(child: Text("You Learn Flutter on 30 Days"),
      ),
      drawer: const Drawer(),
    );
  }
}