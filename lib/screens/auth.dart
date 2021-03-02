import 'package:airtel_india/screens/screens.dart';
import 'package:airtel_india/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String _selectedLanguageName = "English";
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: height * .45,
                    child: Center(
                      child: Image(
                        image: AssetImage("assets/images/logo_white.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(height: height * .01),
                  Text(
                    "Enjoy the worlds fastest and best network",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: height * .05),
                  SizedBox(
                    width: width * .9,
                    child: OutlineButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () => showRegisterModal(context),
                    ),
                  ),
                  SizedBox(height: height * .03),
                  SizedBox(
                    width: width * .9,
                    child: FlatButton(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 15.0),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: backgroundColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      onPressed: () => showLoginModal(context),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Language",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    GestureDetector(
                      onTap: () => showLanguageModal(context),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFB80D23),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          _selectedLanguageName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showLanguageModal(BuildContext context) {
    return showMaterialModalBottomSheet(
      expand: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(15.0),
        height: 200.0,
        child: Column(
          children: [
            Text("Select Language"),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                languagePlaceholder("E", "English"),
                languagePlaceholder("සි", "සිංහල"),
                languagePlaceholder("த", "தமிழ்"),
              ],
            )
          ],
        ),
      ),
    );
  }

  languagePlaceholder(String icon, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedLanguageName = title;
        });
        Navigator.pop(context);
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 35.0,
            backgroundColor: _selectedLanguageName == title
                ? backgroundColor
                : Color(0xFFF7F2F2),
            child: Text(
              icon,
              style: TextStyle(
                fontSize: 35.0,
                color: _selectedLanguageName == title
                    ? Colors.white
                    : backgroundColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            title,
            style: TextStyle(
              color: _selectedLanguageName == title
                  ? backgroundColor
                  : Color(0xFF999999),
            ),
          ),
        ],
      ),
    );
  }

  showLoginModal(BuildContext context) {
    return showMaterialModalBottomSheet(
      expand: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      context: context,
      builder: (context) => Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          padding: const EdgeInsets.all(15.0),
          height: 370.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: backgroundColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Let's get started",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20),
              _textField("Mobile Number", false, false),
              SizedBox(height: 15),
              _textField("Password", false, true),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot password?"),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  color: backgroundColor,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 15.0),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: backgroundColor,
                      width: 1.0,
                    ),
                  ),
                  onPressed: () => route(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showRegisterModal(BuildContext context) {
    return showMaterialModalBottomSheet(
      expand: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      context: context,
      builder: (context) => Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          height: 570.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  "Signup",
                  style: TextStyle(
                    color: backgroundColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Register with airtel account number, to start your account!",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20),
              _textField("Mobile Number", false, false),
              SizedBox(height: 15),
              _textField("NIN Number", false, false),
              SizedBox(height: 15),
              _textField("Email Address", false, false),
              SizedBox(height: 15),
              _textField("Password", false, true),
              SizedBox(height: 15),
              _textField("Confirm Password", false, true),
              CheckboxListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  "Terms & conditions",
                  style: TextStyle(fontSize: 11),
                ),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  color: backgroundColor,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 15.0),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: backgroundColor,
                      width: 1.0,
                    ),
                  ),
                  onPressed: () => route(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _textField(String hintText, bool useIcon, bool obscureStatus) {
    return TextFormField(
      autofocus: false,
      obscureText: obscureStatus,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        suffixIcon: useIcon
            ? Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 16,
              )
            : null,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xFF999999),
          fontSize: 10.0,
        ),
        fillColor: Color(0xFFF4F8FB),
        filled: true,
        border: InputBorder.none,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3.0),
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
    );
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Dashboard()));
  }
}
