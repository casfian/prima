import 'package:flutter/material.dart';
import 'package:prima/home.dart';
import 'package:prima/screens/faq.dart';
import 'package:prima/screens/property.dart';
 
void main() => runApp(MyApp());
 
//root class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
      routes: <String, WidgetBuilder> {
        '/property': (context) => Property(),
        '/faq': (context) => FAQ(),
      },
    );
  }
}