import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_backup14barber_screen/screens/list_screen.dart';
import 'package:flutter_backup14barber_screen/screens/service_screen.dart';
import 'package:flutter_backup14barber_screen/profile/pages/profile_edit.dart';

class MyHmePage extends StatefulWidget {
  @override
  _MyHmePageState createState() {
    return _MyHmePageState();
  }
}

class _MyHmePageState extends State<MyHmePage> {
  //List<String> _titles = ["Home", "Profile", "Shop"];
  List<Widget> _items = [
    ServicePage(),
    ListPage(),
    TryPage(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: IndexedStack(
              index: _selectedIndex,
              children: _items) //_items.elementAt(_index),
          ),
      bottomNavigationBar: _showBottomNav(),
    );
  }

  Widget _showBottomNav() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: '',
        ),
      ],
      backgroundColor: Colors.black,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      iconSize: 40,
      onTap: _onTap,
      elevation: 30,
    );
  }

  void _onTap(int index) {
    _selectedIndex = index;
    setState(() {});
  }
}
