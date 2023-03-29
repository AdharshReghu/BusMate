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
          color: kBackgroundColor,
          child: Column(
            //column containing 3 sections , one section for displaying profile picture of user,name and email, one section for displaying the data of the user,pne section for sign-out button
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(''),
                      radius: 55,
                    ),
                    Text(
                      "User Name",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "useremail@gmail.com",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  decoration: kCurvedContainer,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Student ID : #12345678",
                        style: kNormalTextBolded,
                      ),
                      Text(
                        "Division : IT",
                        style: kNormalTextBolded,
                      ),
                      Text(
                        "Semester : 6",
                        style: kNormalTextBolded,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: kRedButton,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                onPressed: () {},
                                child: const Text("UPDATE DETAILS")),
                          ),
                        ),
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
                    style: kBlueButtonStyle,
                    onPressed: () {},
                    child: const Text("Sign Out"),
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
