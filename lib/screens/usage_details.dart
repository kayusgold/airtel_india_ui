import 'package:airtel_india/utils/constants.dart';
import 'package:airtel_india/widgets/bottom_navigation.dart';
import 'package:airtel_india/widgets/header.dart';
import 'package:flutter/material.dart';

class UsageDetails extends StatefulWidget {
  @override
  _UsageDetailsState createState() => _UsageDetailsState();
}

class _UsageDetailsState extends State<UsageDetails> {
  int _selectedDuration = 0;
  List<String> durations = []..add("Daily")..add("Weekly")..add("Monthly");

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF4F8FB),
      body: SafeArea(
        child: Column(
          children: [
            headerWithoutLogo(),
            cycleSelection(height, width),
            dataUsageAnalysis(
              height: height,
              width: width,
              date: "Mon, Nov 4 - 2019",
              totalData: "10.0 GB",
              usedData: "7.5 GB",
              freeData: "2.5 GB",
              usedDataPercentage: 70,
            ),
            dataUsageAnalysis(
              height: height,
              width: width,
              date: "Mon, Nov 3 - 2019",
              totalData: "10.0 GB",
              usedData: "7.5 GB",
              freeData: "2.5 GB",
              usedDataPercentage: 90,
            ),
            dataUsageAnalysis(
              height: height,
              width: width,
              date: "Mon, Nov 2 - 2019",
              totalData: "10.0 GB",
              usedData: "7.5 GB",
              freeData: "2.5 GB",
              usedDataPercentage: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(selectedTab: 2),
    );
  }

  cycleSelection(double height, double width) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: height * 0.085,
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: ListView.builder(
          itemCount: durations.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.only(right: 12, left: 4),
              width: (width / 3) - 4,
              child: RaisedButton(
                textColor: _selectedDuration == index
                    ? Colors.white
                    : Color(0x80999999),
                color: _selectedDuration == index
                    ? backgroundColor
                    : Colors.transparent,
                elevation: _selectedDuration == index ? 7 : 0,
                onPressed: () {
                  setState(() {
                    _selectedDuration = index;
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  durations[index],
                  style: TextStyle(
                    fontSize: _selectedDuration == index ? 20 : 16,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  dataUsageAnalysis({
    double height,
    double width,
    String date,
    String totalData,
    String usedData,
    String freeData,
    double usedDataPercentage,
  }) {
    final mWidth = width * 0.882;
    return Container(
      padding: const EdgeInsets.all(8),
      height: height * 0.22,
      width: width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF666666),
                ),
              ),
              SizedBox(height: height * 0.01),
              Row(
                children: [
                  Container(
                    width: mWidth * usedDataPercentage / 100,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFCE00),
                    ),
                  ),
                  Container(
                    width: mWidth * ((100 - usedDataPercentage) / 100),
                    height: 15,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF00EE),
                    ),
                  ),
                ],
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
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          totalData,
                          style: TextStyle(
                            color: Colors.black,
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
                          "Used Data",
                          style: TextStyle(
                            color: Color(0xFFFFCE00),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          usedData,
                          style: TextStyle(
                            color: Color(0xFFFFCE00),
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
                          "Free Data",
                          style: TextStyle(
                            color: Color(0xFFFF00EE),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          freeData,
                          style: TextStyle(
                            color: Color(0xFFFF00EE),
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
    );
  }
}
