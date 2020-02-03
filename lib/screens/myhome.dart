import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  final Color color;

  MyHome(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Text(
          "Welcome, John.",
          style: TextStyle(
              decoration: TextDecoration.none,
              textBaseline: TextBaseline.alphabetic,
              fontWeight: FontWeight.bold,
              fontSize: 26),
        ),
        Text(
          "Here’s your outfit of the day!",
          style: TextStyle(
              decoration: TextDecoration.none,
              textBaseline: TextBaseline.alphabetic,
              fontWeight: FontWeight.bold,
              color: Colors.grey[500],
              fontSize: 16),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomCards(
              imagePath: 'assets/shirt.png',
            ),
            CustomCards(
              imagePath: 'assets/pants.png',
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomCards(
              imagePath: 'assets/blueshirt.png',
            ),
            CustomCards(
              imagePath: 'assets/shoes.png',
            )
          ],
        )
      ],
    ));
  }
}

class CustomCards extends StatelessWidget {
  final String imagePath;
  CustomCards({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            new BoxShadow(
              color: Colors.grey[300],
              blurRadius: 10.0,
              offset: Offset(1.0, 1.0),
            ),
          ]),
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('Card tapped.');
            },
            child: Container(
              width: 160,
              height: 160,
              child: Image.asset(
                this.imagePath,
                height: 50.0,
              ),
            ),
          )),
    );
  }
}
