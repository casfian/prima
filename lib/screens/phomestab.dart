import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
 
class PHomesTab extends StatefulWidget {
  @override
  _PHomesTabState createState() => _PHomesTabState();
}

class _PHomesTabState extends State<PHomesTab> {
  final _controller = PageController();

  List<Widget> pages = [
    Container(color: Colors.grey,),
    Container(color: Colors.purpleAccent,),
    Container(color: Colors.greenAccent,)
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