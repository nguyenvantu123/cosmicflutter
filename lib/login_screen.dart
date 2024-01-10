import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/background_image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: 213.915,
                      height: 76.064,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
