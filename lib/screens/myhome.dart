import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  final Color color;
  final List<String> entries = <String>['A'];
  final List<int> colorCodes = <int>[600];

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
        ),
        Text(
          "The latest in men’s fashion",
          style: TextStyle(
              decoration: TextDecoration.none,
              textBaseline: TextBaseline.alphabetic,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        Container(
            height: 140,
            child: ListView.builder(
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int pos) {
                return Padding(
                    padding: EdgeInsets.only(bottom: 1.0),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 1.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Center(
                                      child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset('assets/user.png'),
                                  )),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "The latest in men’s fashion",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        textBaseline: TextBaseline.alphabetic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "Some of the es  to man right",
                                    softWrap: true,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        textBaseline: TextBaseline.alphabetic,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFA8A8A8),
                                        fontSize: 14),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ));
              },
            )),
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
              //  print('Card tapped.');
            },
            child: new Stack(
              //alignment:new Alignment(x, y)
              children: <Widget>[
                Container(
                  width: 160,
                  height: 160,
                  child: Image.asset(
                    this.imagePath,
                    height: 50.0,
                  ),
                ),
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.refresh,
                        size: 28,
                        color: Colors.blue.shade400,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
