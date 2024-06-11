import 'package:flutter/material.dart';

class FeedbackTile extends StatelessWidget {
  final String PImage;
  final String name;
  final double reting;

  const FeedbackTile(
      {super.key,
      required this.name,
      required this.PImage,
      required this.reting});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage("${PImage}"),
          ),
          title: Text(
            "$name",
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.yellow,size:30,),
              Text(
                "${reting}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
