import 'package:flutter/material.dart';
import 'package:practice_flutter/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image/login_image.png"),
            const SizedBox(height: 20.0),
            Text(
              "Welcome $name",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Username", hintText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: "Password", hintText: "Enter Password"),
                  ),
                  const SizedBox(height: 30),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      alignment: Alignment.center,
                      height: 50,
                      width: changeButton ? 50 : 500,
                      // color: Colors.deepPurpleAccent,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 30 : 8)),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                    ),
                  )

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  //   },
                  //   style:
                  //       TextButton.styleFrom(minimumSize: const Size(500, 50)),
                  //   child: const Text("Login"),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
