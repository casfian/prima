import 'package:flutter/material.dart';
 
 
class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Account'),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: Container(
            child: Text('Account'),
          ),
        ),   
    );
  }
}