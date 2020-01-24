import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String btnText;
  final Color txtColor;

  CustomText({@required this.btnText, this.txtColor});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            this.btnText,
            style: TextStyle(
              decoration: TextDecoration.none,
              textBaseline: TextBaseline.alphabetic,
              fontSize: 20,
              color: this.txtColor,
            ),
          ),
        ],
      ),
    ));
  }
}
