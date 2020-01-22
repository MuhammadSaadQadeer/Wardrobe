import 'package:flutter/material.dart';
import 'package:wardrobe/components/buttons.dart';
import 'package:wardrobe/components/customiconbutton.dart';

class Landing extends StatelessWidget {
  void signInWithGoogle() {}

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
         SizedBox(
            width: 300, // specific value
            child: CustomIconButton(
                iconName: Icons.account_circle,
                btnText: "Sign In With Facebook",
                bgColor: Colors.white),
          ),
          SizedBox(
            height: 30.0,
          ),
          SizedBox(
            width: 300, // specific value
            child: CustomIconButton(
                iconName: Icons.account_circle,
                btnText: "Sign In With Google",
                bgColor: Colors.white),
          )
        ])));
  }
}
