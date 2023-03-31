import 'package:flutter/material.dart';
import 'constants.dart';
import 'Bottom_app_bars.dart';

void main() {
  runApp(ConfirmBooking());
}

class ConfirmBooking extends StatefulWidget {
  const ConfirmBooking({Key? key}) : super(key: key);

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: displayAppBar("Confirm Booking"),
        bottomNavigationBar: displayNavBar(),
        body: Container(
          color: kBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Book Your Ride !!",
                          style: kNormalText,
                        ),
                      ),
                      Image.asset(
                        "assets/Bus.png",
                        scale: 1.5,
                      )
                    ],
                  ),
                )),
                Expanded(
                    flex: 3,
                    child: Container(
                      decoration: kCurvedContainer,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Route : Aluva",
                            style: kNormalTextBolded,
                          ),
                          Text(
                            "Stop : Bank Junction",
                            style: kNormalTextBolded,
                          ),
                          Text(
                            "Ticket Type : Monthly",
                            style: kNormalTextBolded,
                          ),
                          Text(
                            "Amount : 80/-,",
                            style: kNormalTextBolded,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              style: kBlueButtonStyle,
                              onPressed: () {},
                              child: const Text("Go Back"),
                            ),
                          ),
                        ],
                      ),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: kRedButtonStyle,
                      child: const Text(
                        "Payments",
                        style: kRedButtonText,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
