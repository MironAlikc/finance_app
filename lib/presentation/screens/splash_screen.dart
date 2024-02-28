import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:finance/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'Финансы'.toUpperCase(),
                  textAlign: TextAlign.center,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    fontFamily: 'Lobster',
                  ),
                  colors: [
                    const Color(0xFF0abab5),
                    Colors.black,
                    Colors.green,
                    Colors.white,
                    Colors.amber,
                    Colors.black
                  ],
                )
              ],
              repeatForever: true,
            ),
          ],
        ),
      ),
    );
  }
}
