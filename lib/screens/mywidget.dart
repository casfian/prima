import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final Color color;

  MyWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
