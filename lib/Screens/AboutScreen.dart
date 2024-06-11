import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child:  Padding(
          padding: EdgeInsets.all(24.0),
          child: ListView(
            children:  [
              Center(
                child: Row(
                  children: [
                    IconButton(onPressed:(){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.arrow_back_ios)),
                    Text(
                      "About",
                      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Text(
                  '''About Me AppSafe, Reliable, and Convenient School TransportationMe App is your go-to solution for ensuring your children get to school safely and on time. Designed with parents in mind, our user-friendly app allows you to book single or multiple seats for your children’s school commute with ease and convenience
ـــــــــــــــــــــــــــــــــــــــــــــــــــــــ
 Key Features:
- Easy Booking: Our intuitive interface makes it simple for anyone to schedule rides. Just a few taps and your child's ride is secured.
- Multiple Payment Options: Enjoy the flexibility of choosing from various payment methods, ensuring a hassle-free experience.
- Safety First: All our drivers are thoroughly vetted and trained to provide the highest standard of safety for your children.
- Real-Time Tracking: Monitor the ride in real-time and receive notifications to stay updated on your child’s journey.
- Flexible Scheduling: Whether you need a single ride or a recurring booking, Me App caters to your specific needs.
- Customer Support: Our dedicated support team is available to assist you with any questions or concerns.
                  ''',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),)
            ],
          ),
        ),
      ),
    );
  }
}
