import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String btnText;
  final Color txtColor;
  final double txtSize;
  final bool isBold;

  CustomText({@required this.btnText, this.txtColor, this.txtSize, this.isBold});
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
              fontSize: this.txtSize > 0 ? this.txtSize : 20,
              color: this.txtColor,
              fontWeight: this.isBold ? FontWeight.bold: FontWeight.normal
            ),
          ),
        ],
      ),
    ));
  }
}
