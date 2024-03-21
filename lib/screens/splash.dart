import 'dart:async';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:ozostore/screens/login.dart';
import 'package:ozostore/utils/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: splashScreenBg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to the",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Text(
              "101 Store",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 34),
            )
          ],
        ),
      ),
    );
  }
}
