import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:busmate/Bottom_app_bars.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

void main() {
  runApp(BookingPage());
}

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);
  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  List<dynamic> routes = [];
  List<dynamic> stopMaster = [];
  List<dynamic> stops = [];
  List<dynamic> ticketType = [];
  String? stopId;
  String? typeId;
  String? routeId;
  @override
  void initState() {
    super.initState();
    this.ticketType.add({"Id": 1, "Ticket": "Daily (₹10)"});
    this.ticketType.add({"Id": 2, "Ticket": "Weekly (₹30)"});
    this.ticketType.add({"Id": 3, "Ticket": "Monthly (₹80)"});

    this.routes.add({"id": 1, "label": "Aluva Route"});
    this.routes.add({"id": 2, "label": "Vytilla Route"});
    this.stopMaster = [
      {"ID": 1, "Name": "Kalamassery", "ParentId": 1},
      {"ID": 2, "Name": "Muttom", "ParentId": 1},
      {"ID": 3, "Name": "Ambattukavu", "ParentId": 1},
      {"ID": 4, "Name": "Pulinchodu", "ParentId": 1},
      {"ID": 5, "Name": "Aluva", "ParentId": 1},
      {"ID": 1, "Name": "CUSAT Junction", "ParentId": 2},
      {"ID": 2, "Name": "Kalamassery", "ParentId": 2},
      {"ID": 3, "Name": "PathadiPalam", "ParentId": 2},
      {"ID": 4, "Name": "Edappaly", "ParentId": 2},
      {"ID": 5, "Name": "Changampuzha Park", "ParentId": 2},
      {"ID": 6, "Name": "Palarivattom", "ParentId": 2},
      {"ID": 7, "Name": "Kaloor", "ParentId": 2},
      {"ID": 8, "Name": "Vytilla", "ParentId": 2},
      {"ID": 9, "Name": "Kadavanthara", "ParentId": 2},
      {"ID": 10, "Name": "Panampilly Nagar", "ParentId": 2}
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: displayAppBar("Booking"),
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
                      Expanded(
                        child: Image.asset(
                          "assets/Bus.png",
                          scale: 1.5,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: kLoginPageBar,
                            width: 5,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FormHelper.dropDownWidgetWithLabel(
                          context,
                          "Route",
                          "Select Your Route",
                          this.routeId,
                          this.routes,
                          (onChangedVal) {
                            this.routeId = onChangedVal;
                            print("Selected Country : $onChangedVal");
                            this.stops = this
                                .stopMaster
                                .where((stateItem) =>
                                    stateItem["ParentId"].toString() ==
                                    onChangedVal.toString())
                                .toList();
                            this.stopId = null;
                            setState(() {});
                          },
                          (onValidateVal) {
                            if (onValidateVal == null) {
                              return "Please Select a route";
                            }
                            return null;
                          },
                          borderColor: Colors.blue,
                          borderFocusColor: Colors.redAccent,
                          borderRadius: 10,
                          optionValue: "id",
                          optionLabel: "label",
                          textColor: Colors.black,
                          hintColor: Colors.black,
                        ),
                        FormHelper.dropDownWidgetWithLabel(
                            context,
                            "Stop",
                            "Select Your Stop",
                            this.stopId,
                            this.stops, (onChangedVal) {
                          this.stopId = onChangedVal;
                          print("Selected Stop : $onChangedVal");
                        }, (onValidate) {
                          return null;
                        },
                            borderColor: Colors.blueAccent,
                            borderFocusColor: Colors.redAccent,
                            borderRadius: 10,
                            optionValue: "ID",
                            optionLabel: "Name",
                            textColor: Colors.black,
                            hintColor: Colors.black),
                        FormHelper.dropDownWidgetWithLabel(
                          context,
                          "Ticket Type",
                          "Select Ticket ",
                          this.typeId,
                          this.ticketType,
                          (onChangedVal) {
                            this.typeId = onChangedVal;
                            print("Selected Ticket : $onChangedVal");
                            setState(() {});
                          },
                          (onValidateVal) {
                            if (onValidateVal == null) {
                              return "Please Select a Ticket";
                            }
                            return null;
                          },
                          borderColor: Colors.blue,
                          borderFocusColor: Colors.redAccent,
                          borderRadius: 10,
                          optionValue: "Id",
                          optionLabel: "Ticket",
                          textColor: Colors.black,
                          hintColor: Colors.black,
                        ),
                      ],
                    ),
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
