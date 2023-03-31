import 'package:busmate/constants.dart';
import 'package:flutter/material.dart';

final String dest = "SOE";

class Ticket extends StatelessWidget {
  final String route;
  final String validity;
  final String dest = "SOE";
  final String destination;

  const Ticket({
    required this.route,
    required this.validity,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 188,
      width: 318,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(child: buildRow("Route :", route)),
          Expanded(child: buildRow(dest, destination)),
          Expanded(child: buildRow("Validity :", " " + validity)),
        ],
      ),
    );
  }

  Row buildRow(String label, String value) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Inter",
              fontSize: (label == dest) ? 36 : 24,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Inter",
                fontSize: 24,
                color: Colors.black,
              ),
              children: [
                if (label == dest)
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(Icons.swap_horiz, size: 30),
                    ),
                  ),
                TextSpan(text: " "),
                TextSpan(
                  text: value,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Inter",
                    fontSize: (label == dest) ? 18 : 24,
                    color: label == "Validity :" ? Colors.red : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
