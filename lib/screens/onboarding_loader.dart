import 'dart:async';

import 'package:airtel_india/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class OnboardingLoader extends StatefulWidget {
  @override
  _OnboardingLoaderState createState() => _OnboardingLoaderState();
}

class _OnboardingLoaderState extends State<OnboardingLoader> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6001B),
      body: Center(child: spinkit),
    );
  }

  final spinkit = SpinKitThreeBounce(
    color: Colors.white,
    size: 25.0,
  );

  startTimer() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => AuthScreen()));
  }
}
