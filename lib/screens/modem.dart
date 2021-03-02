import 'package:airtel_india/model/devices.dart';
import 'package:airtel_india/model/modem_stat.dart';
import 'package:airtel_india/utils/constants.dart';
import 'package:airtel_india/widgets/bottom_navigation.dart';
import 'package:airtel_india/widgets/header.dart';
import 'package:flutter/material.dart';

class ModemScreen extends StatelessWidget {
  List<ModemStat> stats = []
    ..add(ModemStat(
        bgColor: Color(0x0DDE1818),
        icon: Icons.network_wifi,
        iconColor: backgroundColor,
        title: "Signal Strength",
        description: "85 %"))
    ..add(ModemStat(
        bgColor: Color(0x0D009DFF),
        icon: Icons.cast_connected,
        iconColor: Color(0xFF009DFF),
        title: "Ping Rate",
        description: "14 ms"))
    ..add(ModemStat(
        bgColor: Colors.white,
        icon: Icons.download_rounded,
        iconColor: Color(0xFFFFCE00),
        title: "Download Speed",
        description: "210.8 mb/s"))
    ..add(ModemStat(
        bgColor: Color(0x0DFF00EE),
        icon: Icons.upload_rounded,
        iconColor: Color(0xFFFF00EE),
        title: "Upload Speed",
        description: "11.8 mb/s"));

  List<Device> devices = []
    ..add(Device(
        name: "iPhone 6",
        mac: "9518 6253 1223 00XC",
        category: "Mobile",
        icon: Icons.phone_android,
        status: "Disconnect"))
    ..add(Device(
        name: "Mac Book",
        mac: "9518 6253 1223 00XC",
        category: "Laptop",
        icon: Icons.laptop,
        status: "Disconnect"))
    ..add(Device(
        name: "iWatch",
        mac: "9518 6253 1223 00XC",
        category: "Other",
        icon: Icons.watch,
        status: "Disconnect"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F8FB),
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kalutara",
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Change tower",
                              style: TextStyle(
                                color: backgroundColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Last updated on   ",
                                    style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "  1:15 PM, Fri, Nov 1, 2019",
                                        style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Updates every 60mins automatically",
                                  style: TextStyle(
                                    color: Color(0x80333333),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0x26DE1818),
                              child: Icon(
                                Icons.refresh,
                                color: backgroundColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Divider(),
                        Expanded(
                          child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: stats.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 4.0,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return gridItem(
                                    icon: stats[index].icon,
                                    iconColor: stats[index].iconColor,
                                    color: stats[index].bgColor,
                                    title: stats[index].title,
                                    description: stats[index].description);
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 400,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      "Connected Devices",
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Divider(),
                  Expanded(child: connectedDevicesList()),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(selectedTab: 3),
    );
  }

  gridItem(
      {IconData icon,
      Color iconColor,
      String title,
      String description,
      Color color}) {
    return Card(
      shadowColor: Colors.transparent,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 40,
            ),
            SizedBox(height: 5.0),
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF666666),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              description,
              style: TextStyle(
                color: iconColor,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  connectedDevicesList() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: devices.length,
      itemBuilder: (BuildContext context, int i) {
        return Container(
          padding: const EdgeInsets.all(12.0),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Center(
                      child: Icon(
                        devices[i].icon,
                        size: 30.0,
                        color: backgroundColor,
                      ),
                    ),
                  ),
                  Text(
                    devices[i].category,
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
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
                          text: devices[i].name,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(height: 8),
                    Text(
                      devices[i].mac,
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                devices[i].status,
                style: TextStyle(
                  color: Color(0xFFD6001B),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
