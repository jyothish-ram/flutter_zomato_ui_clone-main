import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zomato_clone/Authenticate/login_screen.dart';
import 'package:zomato_clone/Screens/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(226, 56, 70, 1),
          Color.fromRGBO(217, 39, 97, 1),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Text(
            "Zomato",
            style: TextStyle(
              fontSize: 38,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
