import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  final Color color;

  MyHome(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
