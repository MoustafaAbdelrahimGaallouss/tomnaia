// travel_history_list.dart


import 'package:flutter/material.dart';
import 'package:tomnaia/Components/TravelHistoryCard.dart';


class TravelHistoryList extends StatelessWidget {
  final List<Map<String, dynamic>> travels = List.generate(10, (index) {
    return {
      "date": "2024/11/11",
      "time": "10:12 PM",
      "price": 100.00 + index,
      "photoUrl": index % 2 == 0 ? 'https://via.placeholder.com/300x150' : null, // Some null URLs for testing
    };
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: travels.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TravelHistoryCard(
            date: travels[index]['date'],
            time: travels[index]['time'],
            price: travels[index]['price'],
            photoUrl: travels[index]['photoUrl'],
          ),
        );
      },
    );
  }
}
