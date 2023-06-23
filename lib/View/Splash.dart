import 'package:flutter/material.dart';
import 'package:ososs/View/HomePage.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3))
        .then((value) => Navigator.pushReplacementNamed(context, 'Home'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}
