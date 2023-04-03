import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'constants.dart';
import 'activeProfile.dart';
import 'profile_page.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [ProfilePage(), ActiveProfile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens[currentIndex],
        //appBar: AppBar(
        //title: Text("Main"),
        //),
        bottomNavigationBar: CurvedNavigationBar(
          color: kPrimaryColor,
          backgroundColor: Color(0xFFEBE8E8),
          animationDuration: Duration(milliseconds: 300),
          items: const <Widget>[
            Icon(Icons.history, size: 30),
            Icon(Icons.home, size: 30),
            Icon(Icons.supervised_user_circle, size: 30),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
