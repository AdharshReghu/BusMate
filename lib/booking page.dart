import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:busmate/Bottom_app_bars.dart';

void main() {
  runApp(BookingPage());
}

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: displayAppBar("Booking"),
        bottomNavigationBar: displayNavBar(),
        body: Container(
          color: kBackgroundColor,
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
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kLoginPageBar),
                    width: double.infinity,
                    child: Column(),
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Next",
                      style: kRedButtonText,
                    ),
                    style: kRedButtonStyle,
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
