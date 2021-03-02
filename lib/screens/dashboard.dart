import 'package:airtel_india/model/history.dart';
import 'package:airtel_india/model/plans.dart';
import 'package:airtel_india/utils/constants.dart';
import 'package:airtel_india/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedDuration = 0;

  List<Plan> plans = []
    ..add(Plan(
        data: "15 GB", cycle: "per day", amount: "LKR449", validity: "34 days"))
    ..add(Plan(
        data: "10 GB", cycle: "per day", amount: "LKR449", validity: "34 days"))
    ..add(Plan(
        data: "5 GB", cycle: "per day", amount: "LKR449", validity: "34 days"));

  List<History> history = []
    ..add(History(
        data: "Unlimited", cycle: "", amount: "LKR449", speed: " 6 \nMb/s"))
    ..add(History(
        data: "10 GB", cycle: "per day", amount: "LKR349", speed: " 10 \nMb/s"))
    ..add(History(
        data: "Unlimited", cycle: "", amount: "LKR599", speed: " 10 \nMb/s"));

  List<String> durations = []
    ..add("1 Month")
    ..add("3 Months")
    ..add("6 Months")
    ..add("8 Months")
    ..add("12 Months")
    ..add("24 Months");

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF4F8FB),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            SizedBox(height: height * .02),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Popular plans",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 18,
                ),
              ),
            ),
            plansCards(width),
            SizedBox(height: height * .001),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: offers(),
            ),
            SizedBox(height: height * .002),
            Container(
              height: height * 0.40,
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 12.0),
              color: Colors.white,
              child: Column(
                children: [
                  durationHeader(width),
                  Expanded(
                    child: historyUI(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(selectedTab: 0),
    );
  }

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

  offers() {
    return Container(
      height: 120.0,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 80,
              height: 80,
              child: Image.asset(
                "assets/images/image1.png",
                fit: BoxFit.fill,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: "New Offers  ",
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "  Only for you, available today.",
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.0),
                RichText(
                  text: TextSpan(
                    text: "02",
                    style: TextStyle(
                      color: backgroundColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Hrs",
                        style: TextStyle(
                          color: backgroundColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: " 30",
                        style: TextStyle(
                          color: backgroundColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: " Min",
                        style: TextStyle(
                          color: backgroundColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: " 54",
                        style: TextStyle(
                          color: backgroundColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: " Sec",
                        style: TextStyle(
                          color: backgroundColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  plansCards(double width) {
    return Container(
      height: 160.0,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 0, right: 16),
        scrollDirection: Axis.horizontal,
        itemCount: plans.length,
        itemBuilder: (BuildContext context, int i) => Container(
          width: width * .52,
          child: Stack(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 5.0, bottom: 5.0, right: 8),
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 18.0, left: 12.0, right: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: plans[i].data,
                            style: TextStyle(
                              color: Color(0xFF009DFF),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: " ${plans[i].cycle}",
                                style: TextStyle(
                                  color: Color(0xFF009DFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 55,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                plans[i].amount,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF666666),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Validity: ",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF999999),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    plans[i].validity,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF999999),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 10,
                          thickness: 1.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "View details >>",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: backgroundColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  durationHeader(double width) {
    return Container(
      height: 35.0,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 8, right: 16),
        scrollDirection: Axis.horizontal,
        itemCount: durations.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              print("$index tapped");
              setState(() {
                _selectedDuration = index;
              });
            },
            child: Container(
              width: width * 0.2,
              child: Text(
                durations[index],
                style: TextStyle(
                  color: _selectedDuration == index
                      ? backgroundColor
                      : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  historyUI() {
    return ListView.builder(
      itemCount: history.length,
      itemBuilder: (BuildContext context, int i) {
        return Container(
          padding: const EdgeInsets.all(12.0),
          height: 95,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F6FB),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    history[i].speed,
                    style: TextStyle(
                      color: Color(0xFF1892DE),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: history[i].data,
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        WidgetSpan(
                          child: Transform.translate(
                            offset: const Offset(2, -8),
                            child: Text(
                              history[i].cycle,
                              //superscript is usually smaller in size
                              textScaleFactor: 0.7,
                              style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(height: 8),
                    Text(
                      history[i].amount,
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Text("Buy now >>")
            ],
          ),
        );
      },
    );
  }
}
