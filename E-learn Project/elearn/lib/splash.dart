import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});
  @override
  _MysplashScreen createState() => _MysplashScreen();
}

class _MysplashScreen extends State<MySplash> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Image.asset(
            'images/logo.png',
            height: 150,
            width: 150,
          ),
        ),
      ),
    );
  }
}
