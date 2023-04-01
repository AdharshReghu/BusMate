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
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Yay Ride Booked",
                  style: kNormalText,
                ),
              ),
              Expanded(child: Image.asset("assets/Bus.png")),
              const Divider(
                color: Colors.black,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.all(20),
                  //padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kLoginPageBar),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Ticket(
                      route: "Aluva",
                      validity: "15 December",
                      destination: "Kalamassery"),
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
                    child: const Text(
                      "Go Home",
                      style: kRedButtonText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
