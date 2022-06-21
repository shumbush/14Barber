import 'package:date_field/date_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_backup14barber_screen/screens/account_screen.dart';

class MyBookin extends StatefulWidget {
  @override
  State<MyBookin> createState() => _MyBookinState();
}

class _MyBookinState extends State<MyBookin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 0),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
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
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Container(
                                height: 103,
                                width: 92,
                                margin: EdgeInsets.only(top: 50),
                                child: Image.asset("images/logo14.png"),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    right: 20, left: 20, top: 20, bottom: 20),
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Select Your Time",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(top: 10.0, bottom: 10.0),
                                width: MediaQuery.of(context).size.width,
                                height: 679.94,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(30.0))),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 20.0, bottom: 10.0),
                                      padding: EdgeInsets.only(
                                          top: 10.0, bottom: 10.0),
                                      child: Stack(
                                        children: [
                                          Text(
                                            'Simon HomI',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      padding:
                                          EdgeInsets.only(left: 5, right: 5),
                                      child: Column(
                                        children: [
                                          DateTimeFormField(
                                            decoration: const InputDecoration(
                                              hintStyle: TextStyle(
                                                  color: Colors.black45),
                                              errorStyle: TextStyle(
                                                  color: Colors.yellowAccent),
                                              border: OutlineInputBorder(),
                                              suffixIcon:
                                                  Icon(Icons.event_note),
                                              labelText: '',
                                            ),
                                            mode: DateTimeFieldPickerMode.time,
                                            autovalidateMode:
                                                AutovalidateMode.always,
                                            validator: (e) =>
                                                (e?.day ?? 0) == 1 ? ' ' : null,
                                            onDateSelected: (DateTime value) {
                                              print(value);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      padding: EdgeInsets.only(
                                          top: 20, right: 5, left: 5),
                                      child: Column(
                                        children: [
                                          DateTimeFormField(
                                            decoration: const InputDecoration(
                                              hintStyle: TextStyle(
                                                  color: Colors.black45),
                                              errorStyle: TextStyle(
                                                  color: Colors.yellowAccent),
                                              border: OutlineInputBorder(),
                                              suffixIcon:
                                                  Icon(Icons.event_note),
                                              labelText: '',
                                            ),
                                            mode: DateTimeFieldPickerMode.date,
                                            autovalidateMode:
                                                AutovalidateMode.always,
                                            validator: (e) =>
                                                (e?.day ?? 0) == 1 ? '' : null,
                                            onDateSelected: (DateTime value) {
                                              print(value);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () => {
                                        _showDialog(context),
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20),
                                        alignment: Alignment.center,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              (Color(0xffE3B04B)),
                                              (Color(0xffE3B04B))
                                            ],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 10),
                                              blurRadius: 50,
                                              color: Color(0xffEEEEEE),
                                            )
                                          ],
                                        ),
                                        child: Text(
                                          'BOOk NOW',
                                          style: TextStyle(
                                            color: Colors.black87,
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

                        //Text
                      ],
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

  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            alignment: AlignmentDirectional.center,
            contentPadding: EdgeInsets.only(top: 15, left: 60, right: 60),
            titlePadding: EdgeInsets.only(top: 15, left: 100, right: 100),
            title: Text('BOOKING'),
            content: Text('Successful Booked'),
            actions: [
              Container(
                alignment: AlignmentDirectional.bottomCenter,
                child: Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHmePage()));
                        },
                        child: const Text(
                          'Okay',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
