import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:tomnaia/Components/profilPhoto.dart';
import 'package:tomnaia/Components/FeedbackTile.dart';
import 'package:tomnaia/Components/NotificationCard.dart';
import 'package:tomnaia/Screens/AboutScreen.dart';
import 'package:tomnaia/Screens/WalletScreen.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1B6896),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Container(
            color: Colors.white,
            height: 700,
            child: ListView(
              // padding: EdgeInsets.all(10),
              children: [
                //  const Center(
                //     child: ProfilePhoto(),
                //   )
                const Text(
                  'Moustafa Abd El-Rahim',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Rating{4.8}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const MainRow(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  indent: 30,
                  endIndent: 30,
                  height: 10,
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Recent Feedback",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const RecentFeedbackExample(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  indent: 30,
                  endIndent: 30,
                  height: 10,
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Notification",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: [
                    NotificationCard(message: "Ride is complete kick off"),
                    NotificationCard(message: "Rider Sero Booked"),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class RecentFeedbackExample extends StatelessWidget {
  const RecentFeedbackExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeedbackTile(
            PImage: "assets/images/IMG20240127180400.jpg",
            name: "Moustafa Rahim ",
            reting: 4.8),
        FeedbackTile(
            PImage: "assets/images/IMG20240127180400.jpg",
            name: " Ahmed Moustafa ",
            reting: 4.8),
      ],
    );
  }
}

class MainRow extends StatelessWidget {
  const MainRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        customBottom(
          name: 'About',
          wicon: Icons.info,
          toWhere: AboutScreen(),
        ),
        customBottom(
          name: 'payment',
          wicon: Icons.credit_card,
          toWhere: WalletScreen(),
        ),
        customBottom(
          name: 'Support',
          wicon: Icons.support,
          toWhere: null,
        ),
      ],
    );
  }
}

class customBottom extends StatelessWidget {
  final String name;
  final IconData wicon;
  final Widget? toWhere;
  const customBottom(
      {super.key,
      required this.name,
      required this.wicon,
      required this.toWhere});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => toWhere!,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
        width: 80,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              wicon,
              weight: 500,
              size: 30,
            ),
            Text(
              '$name',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
          ],
        ),
      ),
    );
  }
}
