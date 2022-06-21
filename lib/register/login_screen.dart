import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_backup14barber_screen/screens/account_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  Color _color = Colors.white;
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
              height: 300,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xff171716),
                gradient: LinearGradient(
                  colors: [(Color(0xff050505)), (Color(0xff0a0a0a))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset("images/logo14.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 60),
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
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 60),
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
                obscureText: true,
                cursorColor: Color(0xff1d1c1c),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.password,
                    color: Color(0xff1d1c1c),
                  ),
                  hintText: 'Enter Your Password',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text('Forget Password'),
                onTap: () => {},
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHmePage())),
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
                  'LOGIN',
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
                  Text("Don't Have Account ?"),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyHmePage())),
                    },
                    child: Text(
                      "Register Now",
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
