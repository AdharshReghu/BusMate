import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'constants.dart';

//call this function to display bottom navigation bar
CurvedNavigationBar displayNavBar() {
  return CurvedNavigationBar(
    color: kPrimaryColor,
    backgroundColor: Color(0xFFEBE8E8),
    animationDuration: Duration(milliseconds: 300),
    items: const <Widget>[
      Icon(Icons.history, size: 30),
      Icon(Icons.home, size: 30),
      Icon(Icons.supervised_user_circle, size: 30),
    ],
    onTap: (index) {
      //Handle button tap
    },
  );
}

//Call this function  to display AppBar in every page by passing title to be displayed as the parameter
AppBar displayAppBar(String heading) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    leading: Transform.scale(
        scale: 4,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 7),
          child: Image.asset("assets/App bar icon.png"),
        )),
    title: Text(
      "$heading",
      style: kHeadingStyle,
    ),
    centerTitle: true,
  );
}
