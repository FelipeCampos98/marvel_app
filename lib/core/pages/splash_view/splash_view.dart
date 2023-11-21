// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startTime() async {
    var duration = const Duration(seconds: 1);
    return Timer(duration, navigationPage);
  }

  navigationPage() {
    Navigator.pushNamed(context, '/home');
  }

  @override
  void initState() {
    super.initState();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        return;
      },
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: Image.asset('assets/logo_marvel.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
