import 'package:busmate/Bottom_app_bars.dart';
import 'package:busmate/constants.dart';
import 'package:flutter/material.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({super.key});

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: displayAppBar('Tickets'),
      bottomNavigationBar: displayNavBar(),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            const Center(
              child: Text(
                "History",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      margin: const EdgeInsets.all(20),
                      child: Container(
                        margin: const EdgeInsets.all(30),
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(20),
                      child: Container(
                        margin: const EdgeInsets.all(30),
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(20),
                      child: Container(
                        margin: const EdgeInsets.all(30),
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.all(20),
                      child: Container(
                        margin: const EdgeInsets.all(30),
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
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
