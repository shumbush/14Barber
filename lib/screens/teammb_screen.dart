import 'package:flutter/material.dart';
import 'package:flutter_backup14barber_screen/screens/account_screen.dart';
import 'package:flutter_backup14barber_screen/selector_screen/check_screen.dart';

const stylistData = [
  {
    'stylistName': 'Himbaza Jones',
    'salonName': 'Super Cut Salon',
    'imgUrl': 'images/img.png',
    'bgColor': Color(0xffF5F1DA),
  },
  {
    'stylistName': 'Bibazee Pole',
    'salonName': 'Rossano Ferretti Salon',
    'imgUrl': 'images/img.png',
    'bgColor': Color(0xffF5F1DA),
  },
  {
    'stylistName': 'Bwiza Max',
    'salonName': 'Neville Hair and Beauty',
    'imgUrl': 'images/img.png',
    'bgColor': Color(0xffF5F1DA),
  }
];

class TeamPage extends StatelessWidget {
  final post;

  TeamPage(this.post);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff070707),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Positioned(
                      top: 20,
                      left: 10,
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
              Container(
                height: 103,
                width: 92,
                margin: EdgeInsets.only(top: 10),
                child: Image.asset("images/logo14.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Book Now",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      StylistCard(stylistData[0]),
                      StylistCard(stylistData[1]),
                      StylistCard(stylistData[2]),
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

class StylistCard extends StatelessWidget {
  final post;
  StylistCard(this.post);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: post['bgColor'],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            right: 20,
            height: 100,
            width: 100,
            child: Image.asset(
              post['imgUrl'],
              width: MediaQuery.of(context).size.width * 0.60,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  post['stylistName'],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  post['salonName'],
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyBookin()));
                  },
                  color: Color(0xffE3B04B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'BOOK Now',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
