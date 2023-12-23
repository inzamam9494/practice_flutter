import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/image/login_image.png"),
          const SizedBox(height: 20.0),
          const Text(
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 20.0),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
           child: Column(
             children: [
               TextFormField(
                 decoration: const InputDecoration(
                     labelText: "Username",
                     hintText: "Username"
                 ),
               ),
               TextFormField(
                 obscureText: true,
                 decoration: const InputDecoration(
                     labelText: "Password",
                     hintText: "Enter Password"
                 ),
               )
             ],
           ),
         )
        ],
      ),
    );
  }
}
