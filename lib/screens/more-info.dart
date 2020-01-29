import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            color: Colors.white,
            child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                  Center(
                      child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 200,
                      ),
                      Text(
                        "Tell us more about you",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            textBaseline: TextBaseline.alphabetic,
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "The more we know about you will help us to serve more appropriate match to your dressing style everyday.",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            textBaseline: TextBaseline.alphabetic,
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  )),
                ]))));
  }
}
