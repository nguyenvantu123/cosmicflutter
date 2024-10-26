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
    const duration = Duration(seconds: 5);
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
      ),
      child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              child: Image.asset(
                "assets/images/logo.png",
                width: 213.915,
                height: 76.064,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: Image.asset(
                "assets/images/ellipse_27.png",
                width: 296,
                height: 296,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              child: Image.asset(
                "assets/images/ellipse_28.png",
                width: 296,
                height: 296,
                color: const Color.fromRGBO(17, 220, 232, 0),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35, bottom: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(1),
                child: Image.asset(
                  "assets/images/ellipse_29.png",
                  width: 288,
                  height: 288,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(1),
              child: Image.asset(
                "assets/images/shad.png",
                width: 296,
                height: 296,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Align(
                child: Image.asset(
                  "assets/images/flutter_logo.png",
                  width: 111,
                  height: 32,
                ),
              ),
            ),
          ],
        )
      ]), /* add child content here */
    ));
  }
}
// }
