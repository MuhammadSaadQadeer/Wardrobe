import 'package:flutter/material.dart';

class GradientBtn extends StatelessWidget {
  final String btnText;
  final Function onPress;

  GradientBtn({@required this.btnText,this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: RaisedButton(
        onPressed: this.onPress,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffF8BE99), Color(0xffF1A19C)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
             this.btnText,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
