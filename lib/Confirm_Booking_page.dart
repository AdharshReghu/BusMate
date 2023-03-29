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
        ),
      ),
    );
  }
}
