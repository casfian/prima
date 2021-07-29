import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:prima/screens/page1.dart';
import 'package:prima/screens/page2.dart';
import 'package:prima/screens/page3.dart';

class PCommercialsTab extends StatefulWidget {
  @override
  _PCommercialsTabState createState() => _PCommercialsTabState();
}

class _PCommercialsTabState extends State<PCommercialsTab> {
  final _controller = PageController();

  List<Widget> pages = [
    // Container(
    //   color: Colors.red,
    // ),
    // Container(
    //   color: Colors.blue,
    // ),
    // Container(
    //   color: Colors.green,
    // ),
    Page1(),
    Page2(),
    Page3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: PageIndicatorContainer(
            child: PageView(
              children: pages,
              controller: _controller,
              reverse: false,
            ),
            align: IndicatorAlign.bottom,
            length: 3,
            indicatorSpace: 10.0,
          ),
        ),
    );
  }
}

