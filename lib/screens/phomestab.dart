import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:prima/screens/page1.dart';
import 'package:prima/screens/page2.dart';
import 'package:prima/screens/page3.dart';
 
class PHomesTab extends StatelessWidget {
  final _controller = PageController();

  List<Widget> pages = [
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