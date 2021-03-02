import 'package:airtel_india/screens/screens.dart';
import 'package:airtel_india/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigation extends StatefulWidget {
  final int selectedTab;

  const BottomNavigation({Key key, this.selectedTab}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentTabIndex = 0;

  @override
  void initState() {
    _currentTabIndex = widget.selectedTab;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 76,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentTabIndex = 0;
                  route(Dashboard());
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.home,
                      color: (_currentTabIndex == 0)
                          ? backgroundColor
                          : Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    "Home",
                    style: TextStyle(
                        color: _currentTabIndex == 0
                            ? backgroundColor
                            : Colors.grey,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentTabIndex = 1;
                  route(UsageScreen());
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.chartPie,
                      color: (_currentTabIndex == 1)
                          ? backgroundColor
                          : Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    "Usage",
                    style: TextStyle(
                        color: _currentTabIndex == 1
                            ? backgroundColor
                            : Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentTabIndex = 2;
                  route(UsageDetails());
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.bolt,
                      color: (_currentTabIndex == 2)
                          ? backgroundColor
                          : Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    "Recharge",
                    style: TextStyle(
                        color: _currentTabIndex == 2
                            ? backgroundColor
                            : Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentTabIndex = 3;
                  route(ModemScreen());
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.print,
                      color: (_currentTabIndex == 3)
                          ? backgroundColor
                          : Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    "Modem",
                    style: TextStyle(
                        color: _currentTabIndex == 3
                            ? backgroundColor
                            : Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentTabIndex = 4;
                  route(ProfileScreen());
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.userCircle,
                      color: (_currentTabIndex == 4)
                          ? backgroundColor
                          : Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    "Profile",
                    style: TextStyle(
                        color: _currentTabIndex == 4
                            ? backgroundColor
                            : Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  route(Widget screen) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => screen));
  }
}
