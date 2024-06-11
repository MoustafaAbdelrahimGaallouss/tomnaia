// history screen

import 'package:flutter/material.dart';
import 'package:tomnaia/Components/profilPhoto.dart';
import 'package:tomnaia/models/TravelHistoryList.dart';


class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        //AppBar
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: const [ProfilePhoto()],
          title: Text(
            "Tomnaia",
            style: TextStyle(
              fontSize: 35,
              color: Colors.blue[900],
              fontFamily: "Sail",
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("History",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Expanded(child: TravelHistoryList()),
            ],
          ),
        ),
      ),
    );
  }
}
