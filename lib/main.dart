// ignore_for_file: prefer_const_constructors

import 'package:alliance/authetication_screen.dart';
import 'package:alliance/home_screen.dart';
import 'package:alliance/transfer_screen.dart';
import 'package:alliance/login_screen.dart';
import 'package:alliance/splash_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Root Widget - ParentWidget
      title: 'Alliance',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        canvasColor: Color(0xfff5f8fa),
      ),
      home: AnimatedSplashScreen(
        splash: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/Alliance_Logo.png"),
            scale: 17.0,
            fit: BoxFit.contain,
          )),
        ),
        nextScreen: AuthenticationScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
