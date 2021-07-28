import 'package:flutter/material.dart';
 
 
class MoreInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Moreinfo'),
        ),
        body: Center(
          child: Container(
            child: Text('More info'),
          ),
        ),   
    );
  }
}