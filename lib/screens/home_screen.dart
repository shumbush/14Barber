import 'package:flutter/material.dart';
import 'package:flutter_backup14barber_screen/register/login_screen.dart';
import 'package:flutter_backup14barber_screen/register/signup_screen.dart';

class SlandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 103,
                      width: 92,
                      margin: EdgeInsets.only(
                          top: 200, right: 150, left: 150, bottom: 100),
                      child: Image.asset("images/logo14.png"),
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen())),
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(0),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.black,
                            )
                          ],
                        ),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen())),
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(0),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 0,
                              color: Color(0xff111111),
                            )
                          ],
                        ),
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
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
