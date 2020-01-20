import 'package:flutter/material.dart';

const topColor = const Color(0xfffac699);
const bottomColor = const Color(0xfff1a19c);

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [topColor, bottomColor]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Center(child: Image.asset('assets/Image1.png')),
               Center(
                  child: Text(
                "Almara",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration:TextDecoration.none,
                  textBaseline: TextBaseline.alphabetic,
                  fontSize: 30,
                  color: Colors.white,
                ),
              )),
              Center(
                  child: Text(
                "Your digital wardrobe assistant",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration:TextDecoration.none,
                  textBaseline: TextBaseline.alphabetic,
                  fontSize: 15,
                  color: Colors.white,
                ),
              )),
            ],
          )),
    );
  }
}
