import 'package:flutter/material.dart';
//import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:wardrobe/screens/myhome.dart';
import 'package:wardrobe/screens/placeholder.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    MyHome(Colors.white),
    PlaceholderScreen(Colors.deepOrange),
    PlaceholderScreen(Colors.blue),
    PlaceholderScreen(Colors.red),
    PlaceholderScreen(Colors.green),
    PlaceholderScreen(Colors.lightBlue)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColorStart: Color(0xffF8BE99),
          // backgroundColorEnd: Color(0xffF1A19C),
          //title: const Text('AppBar Demo'),
          // TODO : ADD SEARCH BAR HERE IN THE ACTIONS
          // actions: <Widget>[
          //   IconButton(
          //     icon: const Icon(Icons.add_alert),
          //     tooltip: 'Show Snackbar',
          //     onPressed: () {
          //       // scaffoldKey.currentState.showSnackBar(snackBar);
          //     },
          //   ),
          //   IconButton(
          //     icon: const Icon(Icons.navigate_next),
          //     tooltip: 'Next page',
          //     onPressed: () {
          //       //  openPage(context);
          //     },
          //   ),
          // ],
          ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 10,
        iconSize: 20,
        unselectedItemColor: Colors.black26,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Color(0xffF1A19C),
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.title),
            title: new Text('Wardrobe'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera), title: Text('Camera')),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text('Messages')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text('Notifications')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
    );
  }
}
