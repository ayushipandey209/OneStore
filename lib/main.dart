import 'package:flutter/material.dart';
import 'package:ozostore/screens/splash.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
