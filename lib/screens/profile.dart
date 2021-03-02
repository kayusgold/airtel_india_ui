import 'package:airtel_india/widgets/bottom_navigation.dart';
import 'package:airtel_india/widgets/header.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
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
          SizedBox(height: height * .01),
          Container(
            width: width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Subscriber ID",
                    style: TextStyle(
                      color: Color(0xFF999999),
                    ),
                  ),
                  SizedBox(height: height * .01),
                  Text(
                    "1598 2364 8564 2456 159",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF333333),
                    ),
                  ),
                  SizedBox(height: height * .02),
                  Divider(),
                  SizedBox(height: height * .02),
                  Text(
                    "Upcoming Billing Date",
                    style: TextStyle(
                      color: Color(0xFF999999),
                    ),
                  ),
                  SizedBox(height: height * .01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "5 Nov, 2018",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF333333),
                        ),
                      ),
                      Text(
                        "more details >>",
                        style: TextStyle(
                          color: Color(0xFFD6001B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * .01),
          myCard("assets/images/bandp.png", "Bills & Payment"),
          myCard("assets/images/portal.png", "Portal Settings"),
          myCard("assets/images/broadband.png", "Broadband Settings"),
          myCard("assets/images/support.png", "Support"),
          myCard("assets/images/logout.png", "Signout"),
        ],
      )),
      bottomNavigationBar: BottomNavigation(selectedTab: 4),
    );
  }

  myCard(String imageUrl, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      child: GestureDetector(
        onTap: () => print("clicked"),
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(12.0),
            height: 60,
            child: Row(children: [
              CircleAvatar(
                backgroundColor: Color(0x29DE1818),
                child: Image(
                  image: AssetImage(imageUrl),
                  width: 18,
                  height: 18,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 18),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 14, color: Color(0xFF999999)),
            ]),
          ),
        ),
      ),
    );
  }
}
