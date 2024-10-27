import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //   with SingleTickerProviderStateMixin {
  // late AnimationController _controller;

  startSplashScreenTimer() async {
    const duration = Duration(seconds: 1);
    return Timer(duration, navigationToNextPage);
  }

  void navigationToNextPage() {
    Navigator.of(context, rootNavigator: true).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    startSplashScreenTimer();
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
    )));
  }
}
// }
