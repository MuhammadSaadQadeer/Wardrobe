import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData iconName;
  final Color bgColor;
  final Function onPress;
  final Color textColor;
  final String btnText;

  CustomIconButton({@required this.iconName, this.bgColor, this.onPress, this.textColor, this.btnText});
  @override
  Widget build(BuildContext context) {
    return Center(
      
        child: FlatButton.icon(
        
      color: this.bgColor,
      icon: Icon(iconName), //`Icon` to display
      label: Text(this.btnText,
          style: TextStyle(
              fontSize: 20, color: this.textColor)), //`Text` to display
      onPressed: () {},
    ));
  }
}
