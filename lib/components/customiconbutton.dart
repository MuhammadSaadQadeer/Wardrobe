import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String imagePath;
  final Color bgColor;
  final Function onPress;
  final Color textColor;
  final String btnText;

  CustomIconButton({@required this.imagePath, this.bgColor, this.onPress, this.textColor, this.btnText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
      child: new RaisedButton(
        shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(5.0),
       // side: BorderSide(color: Colors.grey[300],)
),
        padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 10.0, right:10.0),
        color: this.bgColor,
        onPressed: () {},
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Image.asset(
              this.imagePath,
              height: 35.0,
            ),
            new Container(
              padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: new Text(this.btnText,style: TextStyle(color: this.textColor, fontSize:16),)
            ),
          ],
        )
      ),
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
         color: Colors.grey[300],
          blurRadius: 2.0,
          offset: Offset(1.0, 6.0),
        ),
      ]),
    );
  }
}
