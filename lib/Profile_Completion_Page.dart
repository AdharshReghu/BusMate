

import 'package:busmate/constants.dart';
import 'package:flutter/material.dart';

class ProfileCompletionPage extends StatefulWidget {
  const ProfileCompletionPage({super.key});

  @override
  State<ProfileCompletionPage> createState() => _ProfileCompletionPageState();
}

class _ProfileCompletionPageState extends State<ProfileCompletionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          //Container to display the login page bar where the logo is displayed
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: kLoginPageBar,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                children: const [
                  SizedBox(
                    width: 10,
                    height: 30,
                  ),
                  Expanded(
                    child: ListTile(
                      leading: SizedBox(
                        height: 70,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/loginPageImage.png'),
                          ),
                        ),
                      ),
                      title: Text(
                        "Hey,User",
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: kAppFont,
                            color: Colors.white),
                      ),
                      subtitle: Text(
                        "Welcome Onboard !",
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: kAppFont,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Row(
                    children: const [
                      Text(
                        "Complete your profile",
                        style: kNormalText,
                      ),
                    ],
                  ),
                ),
                //Login Page Image section
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    margin: const EdgeInsets.all(15),
                    height: 24,
                    width: double.infinity,
                    child: Form(
                      child: ListView(
                        children: 
                          [
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InputField(text: 'Student ID:'),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 20, right: 10),
                                child: TextField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                              InputField(text: 'Division:'),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 20, right: 10),
                                child: TextField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                              InputField(text: 'Semester:'),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 20, right: 10),
                                child: TextField(
                                  decoration: InputDecoration(),
                                ),
                              ),
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          
                //Container to display the google sign in button
                Expanded(
                  child: Builder(builder: (BuildContext context) {
                    return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(25),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kRedButton,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Continue",
                            style: TextStyle(fontSize: 20),
                          ),
                        ));
                  }),
                ),
                Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    color: kLoginPageBar,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget InputField({required String text}) {
    return Padding(
      padding:const EdgeInsets.only(top: 10, left: 10),
      child: Text(
        text,
        style:const TextStyle(fontSize: 20, fontFamily: kAppFont),
      ),
    );
  }
}
