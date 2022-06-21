import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_backup14barber_screen/register/login_screen.dart';
import 'package:flutter_backup14barber_screen/screens/account_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                gradient: LinearGradient(
                  colors: [(Color(0xff171716)), (Color(0xff171716))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset("assets/logo14.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 20,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHmePage()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //textfield 1
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE),
                  )
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xff1d1c1c),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xff1d1c1c),
                  ),
                  hintText: 'Enter Full Name',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            //textfield 2
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE),
                  )
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xff1d1c1c),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xff1d1c1c),
                  ),
                  hintText: 'Enter Email',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            //textfield 3
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE),
                  )
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xff1d1c1c),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.phone,
                    color: Color(0xff1d1c1c),
                  ),
                  hintText: 'Phone number',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            //textfield 4
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE),
                  )
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xff1d1c1c),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key_sharp,
                    color: Color(0xff1d1c1c),
                  ),
                  hintText: 'Enter Password',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen())),
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(Color(0xff1f1d1d)), (Color(0xff1f1d1d))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE),
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
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Text("This Account Is Already Exit"),
                  GestureDetector(
                    onTap: () => {Navigator.pop(context)},
                    child: Text(
                      "LOGIN Now",
                      style: TextStyle(
                        color: Color(0xffeeb007),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
