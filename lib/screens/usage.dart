import 'package:airtel_india/utils/constants.dart';
import 'package:airtel_india/widgets/bottom_navigation.dart';
import 'package:airtel_india/widgets/header.dart';
import 'package:airtel_india/widgets/offer.dart';
import 'package:flutter/material.dart';

class UsageScreen extends StatefulWidget {
  @override
  _UsageScreenState createState() => _UsageScreenState();
}

class _UsageScreenState extends State<UsageScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF4F8FB),
      body: SafeArea(
        child: Column(
          children: [
            header(),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: height * 0.015),
                  alert(width, height),
                  SizedBox(height: height * 0.015),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: width,
                    height: height * 0.37,
                    child: Card(
                      child: Column(children: [
                        SizedBox(height: height * 0.025),
                        Container(
                          height: height * 0.20,
                          width: width * 0.43,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/chart.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Text(
                          "Renews in 4 Hrs",
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Text(
                          "Tap to view detailed usage >>",
                          style: TextStyle(
                            color: Color(0x80D6001B),
                            fontSize: 14,
                          ),
                        )
                      ]),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: width,
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 14.0,
                                bottom: 0.0,
                                left: 14.0,
                                right: 14.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Thursday, Oct 31 - 5:34 PM"),
                                Icon(
                                  Icons.calendar_today,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.014),
                          Divider(thickness: 2),
                          Container(
                            height: height * 0.08,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Total Data",
                                      style: TextStyle(
                                        color: backgroundColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      "10.0 GB",
                                      style: TextStyle(
                                        color: backgroundColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalDivider(thickness: 1),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Data Used",
                                      style: TextStyle(
                                        color: Color(0xFF009DFF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      "7.5 GB",
                                      style: TextStyle(
                                        color: Color(0xFF009DFF),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalDivider(thickness: 1),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Available Data",
                                      style: TextStyle(
                                        color: Color(0xFF22D165),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      "2.5 GB",
                                      style: TextStyle(
                                        color: Color(0xFF22D165),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 250,
                    child: Card(
                      color: backgroundColor,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 8.0),
                              child: Column(
                                children: [
                                  SizedBox(height: 12.0),
                                  Text(
                                    "LKR449",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 6.0),
                                  Text(
                                    "expires on 01 jan 2020",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 24.0),
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Color(0x40FFFFFF),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 8.0),
                                        Row(
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            SizedBox(width: 12.0),
                                            Text(
                                              "10 GB data per day",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 24.0),
                                        Row(
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            SizedBox(width: 12.0),
                                            Text(
                                              "12 PM - 2 PM unlimited data",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8.0),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(thickness: 1),
                            Column(
                              children: [
                                SizedBox(height: 20.0),
                                Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/sale.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                RichText(
                                  text: TextSpan(
                                    text: "25+ ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Surprising plans",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 18.0),
                                Container(
                                  width: 135,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                      child: Text("Other Plans",
                                          style: TextStyle(
                                              color: backgroundColor))),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  offers(),
                  SizedBox(height: height * 0.015),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(selectedTab: 1),
    );
  }

  alert(double width, double height) {
    return Container(
      width: width,
      height: height * 0.05,
      decoration: BoxDecoration(
        color: Color(0x1A22D165),
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            text: "Your internet speed is ",
            style: TextStyle(
              color: Color(0xFF333333),
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Good",
                style: TextStyle(
                  color: Color(0xFF22D165),
                ),
              ),
              TextSpan(
                text: " now!",
                style: TextStyle(
                  color: Color(0xFF333333),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
