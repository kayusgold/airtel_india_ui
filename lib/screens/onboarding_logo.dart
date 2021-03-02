import 'dart:async';

import 'package:airtel_india/screens/onboarding_loader.dart';
import 'package:flutter/material.dart';

class OnboardingLogo extends StatefulWidget {
  @override
  _OnboardingLogoState createState() => _OnboardingLogoState();
}

class _OnboardingLogoState extends State<OnboardingLogo> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6001B),
      body: Center(
        child: Image(
          image: AssetImage("assets/images/logo_white.png"),
        ),
      ),
    );
  }

  startTimer() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnboardingLoader()));
  }
}
