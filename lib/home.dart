import 'package:flutter/material.dart';
import 'package:prima/screens/about.dart';
import 'package:prima/screens/account.dart';
import 'package:prima/screens/moreinfo.dart';
//import 'package:prima/screens/mywidget.dart';
import 'package:prima/screens/news.dart';
import 'package:prima/screens/property.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _currentIndex = 0;
  final List<Widget> children = [
    About(), //index 0
    News(), // index 1
    Property(), 
    Account(),
    MoreInfo()// index 2
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // to get more than 3 items
        selectedItemColor: Colors.deepOrange,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About Prima',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Property',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'More Info',
          ),
        ],
      ),
    );
  }
}

