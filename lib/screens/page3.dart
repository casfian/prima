import 'package:flutter/material.dart';
 
class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.blueAccent,
            child: Center(child: Text('page 3')),
          ),
        ),
      ),
    );
  }
}