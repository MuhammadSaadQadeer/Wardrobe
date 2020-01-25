import 'package:flutter/material.dart';
import 'package:wardrobe/components/customiconbutton.dart';
import 'package:wardrobe/components/customtext.dart';

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
                imagePath: 'assets/facebooklogo.png',
                btnText: "Sign In With Facebook",
                bgColor: Colors.white),
          ),
          SizedBox(
            height: 30.0,
          ),
          SizedBox(
            width: 300, // specific value
            child: CustomIconButton(
                imagePath: 'assets/googlelogo.png',
                btnText: "Sign In With Google",
                bgColor: Colors.white),
          ),
          SizedBox(
            height: 30.0,
          ),
          CustomText(
            btnText: 'Or',
            txtColor: Colors.black,
          ),
          Container(
            height: 50.0,
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)),
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
                    "SIGN UP",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ])));
  }
}
