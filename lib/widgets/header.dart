import 'package:airtel_india/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

header() {
  return Container(
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 55,
          height: 35,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/logo_red.png"),
                fit: BoxFit.fill),
          ),
        ),
        Container(
          width: 35.0,
          child: Stack(
            children: [
              Icon(
                Icons.notifications_none,
                size: 40.0,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Text(
                      "99",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

headerWithoutLogo() {
  return Container(
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 55,
          height: 35,
          decoration: BoxDecoration(),
          child: Icon(Icons.arrow_back),
        ),
        Container(
          width: 35.0,
          child: Stack(
            children: [
              FaIcon(
                FontAwesomeIcons.slidersH,
                size: 30.0,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
