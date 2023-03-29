import 'package:busmate/constants.dart';
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
        body: Container(
          //overall container covering the body of the profile page
          width: double.infinity,
          color: const Color(0xFFEBE8E8),
          child: Column(
            //column containing 3 sections , one section for displaying profile picture of user,name and email, one section for displaying the data of the user,pne section for sign-out button
            children: [
              Expanded(child: Text("user nsme and logo")),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30))),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Student ID : #12345678",
                        style: kNormalText,
                      ),
                      Text(
                        "Division : IT",
                        style: kNormalText,
                      ),
                      Text(
                        "Semester : 6",
                        style: kNormalText,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("UPDATE DETAILS")),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, right: 10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign Out"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
