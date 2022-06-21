import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_backup14barber_screen/screens/account_screen.dart';
import 'package:flutter_backup14barber_screen/screens/service_screen.dart';

class TryPage extends StatelessWidget {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 103,
                      width: 92,
                      margin: EdgeInsets.only(top: 30),
                      child: Image.asset("images/logo14.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          right: 20, left: 20, bottom: 20, top: 10),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'RobotoMono',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    //Text
                  ],
                ),
              ),
              Container(
                height: 726.94,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                ),
              ),
              Positioned(
                top: 10,
                left: 20,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHmePage()));
                  },
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 30,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border:
                                      Border.all(width: 5, color: Colors.white),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 20,
                                      offset: const Offset(1.5, 1.5),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.person,
                                  size: 60,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Mr. Rakara',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Senior BARBER',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: <Widget>[
                                    Card(
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        padding:
                                            EdgeInsets.only(top: 0, bottom: 20),
                                        child: Column(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                ...ListTile.divideTiles(
                                                  color: Colors.grey,
                                                  tiles: [
                                                    ListTile(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 12,
                                                              vertical: 4),
                                                      leading: Icon(
                                                          Icons.my_location),
                                                      title: Text("Location"),
                                                      subtitle: Text("Kigali"),
                                                    ),
                                                    ListTile(
                                                      leading:
                                                          Icon(Icons.email),
                                                      title: Text("Email"),
                                                      subtitle: Text(
                                                          "easyrakara@gmail.com"),
                                                    ),
                                                    ListTile(
                                                      leading:
                                                          Icon(Icons.phone),
                                                      title: Text("Phone"),
                                                      subtitle:
                                                          Text("0788667676"),
                                                    ),
                                                    ListTile(
                                                      leading:
                                                          Icon(Icons.person),
                                                      title: Text("About Me"),
                                                      subtitle: Text(
                                                          "This is a about me link and you can khow about me in this section."),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("hhjrherrer"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceTile extends StatelessWidget {
  final service;
  ServiceTile(this.service);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      child: Text(
                        service['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${service['duration']} Min',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xff2b5f1d),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Cofirmed',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
