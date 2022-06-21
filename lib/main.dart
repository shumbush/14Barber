import 'package:flutter/material.dart';

import 'package:flutter_backup14barber_screen/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get stylist => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SlandPage(),
    );
  }
}
