import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushNamed('/home');
    });
    return Scaffold(
      backgroundColor: Colors.white,
       body: Center(child: Image.asset('assets/images/logo.png')),
    );
  }
}
