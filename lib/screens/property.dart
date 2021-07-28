import 'package:flutter/material.dart';
 
 
class Property extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Property'),
        ),
        body: Center(
          child: Container(
            child: Text('Property'),
          ),
        ),   
    );
  }
}