import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final bool isWhite;
  final Function onPress;

  CustomButton({@required this.btnText, this.isWhite, this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RaisedButton(
            padding: EdgeInsets.all(12.0),
            color: this.isWhite ? Colors.white : Color(0xff0091EA),
            onPressed: onPress,
            child: Text(
              this.btnText,
              style: TextStyle(
                  fontSize: 20,
                  color: this.isWhite ? Colors.black : Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
