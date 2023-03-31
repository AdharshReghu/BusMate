import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:busmate/Ticket.dart';
import 'package:busmate/Bottom_app_bars.dart';

void main() {
  runApp(ConfirmationPage());
}

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: displayAppBar("Confirmation"),
        bottomNavigationBar: displayNavBar(),
        body: Container(
          width: double.infinity,
          color: kBackgroundColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Yay Ride Booked",
                  style: kNormalText,
                ),
              ),
              Expanded(child: Image.asset("assets/Bus.png")),
              Divider(
                color: Colors.black,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: kLoginPageBar,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: kRedButtonStyle,
                    onPressed: () {},
                    child: Text(
                      "Go Home",
                      style: kRedButtonText,
                    ),
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
