import 'package:flutter/material.dart';

//

class NotificationCard extends StatelessWidget {
  final String message;

  NotificationCard({required this.message});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(Icons.notifications, color: Colors.blue,
        size: 30,),
        title: Text(message,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
