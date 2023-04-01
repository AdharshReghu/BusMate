import 'package:flutter/material.dart';
import 'Bottom_app_bars.dart';
import 'constants.dart';
import 'Ticket.dart';

void main() {
  runApp(ActiveProfile());
}

class ActiveProfile extends StatefulWidget {
  const ActiveProfile({Key? key}) : super(key: key);

  @override
  State<ActiveProfile> createState() => _ActiveProfileState();
}

class _ActiveProfileState extends State<ActiveProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: displayAppBar('Home'),
        bottomNavigationBar: displayNavBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    //User Image
                    CircleAvatar(
                      backgroundColor: Color(0xFFEBE8E8),
                      radius: 70,
                      child: Image.asset('assets/avatar.png'),
                    ),

                    SizedBox(
                      width: 5,
                    ),

                    //User name
                    Text(
                      "UserName",
                      style: kNormalText,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kLoginPageBar,
                ),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "ActiveTickets",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      //Generates a list of Active tickets which are scrollable
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 20),
                            //Custom Widget Ticket which takes in Route , Validity and Destination
                            child: Ticket(
                              route: "Aluva",
                              validity: 'April 22',
                              destination: "Pathadipalam",
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
