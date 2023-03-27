import 'package:flutter/material.dart';
import 'Bottom_app_bars.dart';

//main() code so that profile page can run independently without a main.dart file
void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: displayAppBar(
          "Profile Page",
        ), //function to display app bar is defined in the Bottom_app_bars.dart file
        bottomNavigationBar:
            displayNavBar(), //function to display Bottom navigation bar is defined in the Bottom_app_bars.dart file
        body: Container(color: const Color(0xFFEBE8E8)),
      ),
    );
  }
}
