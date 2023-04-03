import 'package:flutter/material.dart';
import 'Bottom_app_bars.dart';
import 'constants.dart';
import 'Ticket.dart';

void main() {
  runApp(ConfirmTest());
}

class ConfirmTest extends StatefulWidget {
  const ConfirmTest({Key? key}) : super(key: key);

  @override
  State<ConfirmTest> createState() => _ConfirmTestState();
}

class _ConfirmTestState extends State<ConfirmTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: displayAppBar('Confirmation'),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    //User Image
                    Expanded(
                      child: Text(
                        "Yay Ride Booked",
                        style: kNormalText,
                      ),
                    ),
                    Expanded(flex: 3, child: Image.asset('assets/Bus.png')),
                    const Divider(
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
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
                      "Your Ticket",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Ticket(
                        route: 'Aluva',
                        validity: 'December 15',
                        destination: 'Kalamassery')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Go Home",
                    style: kRedButtonText,
                  ),
                  style: kRedButtonStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
