import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_backup14barber_screen/screens/account_screen.dart';
import 'package:flutter_backup14barber_screen/screens/service_screen.dart';

var serviceList = [
  {'title': 'Men\s Hair Cut', 'duration': 45, 'price': 30},
  {'title': 'Women\s Hair Cut', 'duration': 60, 'price': 50},
  {'title': 'Color & Blow Dry', 'duration': 90, 'price': 75},
  {'title': 'Oil Treatment', 'duration': 30, 'price': 20},
];

class ListPage extends StatelessWidget {
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
                color: Colors.black,
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
                          right: 20, left: 20, bottom: 20, top: 20),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Appointments",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    //Text
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3 + 20,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.purple.withOpacity(0.1),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
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
                top: 200,
                child: Container(
                  margin: EdgeInsets.only(top: 21),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: new SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ServiceTile(serviceList[0]),
                          ServiceTile(serviceList[1]),
                          ServiceTile(serviceList[2]),
                          ServiceTile(serviceList[3]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 120,
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
                padding: EdgeInsets.only(top: 10),
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
            color: Color(0xffE3B04B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Cofirmed',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
