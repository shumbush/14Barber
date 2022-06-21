import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_backup14barber_screen/register/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, homeRout);
  }

  homeRout() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f6f6),
                gradient: LinearGradient(
                  colors: [(Color(0xfff8f8f8)), (Color(0xfffdfafa))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
          ),
          Center(
            child: Container(
              height: 270,
              width: 273,
              margin: EdgeInsets.only(top: 50),
            ),
          ),
        ],
      ),
    );
  }
}
