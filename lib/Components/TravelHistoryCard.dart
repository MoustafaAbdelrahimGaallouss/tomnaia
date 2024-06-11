// travel_history_card.dart

import 'package:flutter/material.dart';

class TravelHistoryCard extends StatelessWidget {
  final String date;
  final String time;
  final double price;
  final String? photoUrl;

  TravelHistoryCard({
    required this.date,
    required this.time,
    required this.price,
    this.photoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: photoUrl != null
                      ? NetworkImage(photoUrl!)
                      : AssetImage('assets/placeholder.png') as ImageProvider, // Local placeholder image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.calendar_today, color: Colors.blue),
                SizedBox(width: 5),
                Text(
                  '$date  $time',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              '\$$price',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}











// class TravelHistoryCard extends StatelessWidget {
//   final String date;
//   final String time;
//   final double price;
//    String? photoUrl;

//   TravelHistoryCard({required this.date,
//    required this.time, required this.price,
//      this.photoUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 150,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 image: DecorationImage(
//                   image: NetworkImage(photoUrl!), // Replace with your travel photo URL
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 Icon(Icons.calendar_today, color: Colors.blue),
//                 SizedBox(width: 5),
//                 Text(
//                   '$date  $time',
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             Text(
//               '\$$price',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






// class TravelHistoryCard extends StatelessWidget {
//   final String date;
//   final String time;
//   final double price;
//   String? photoUrl;

//   TravelHistoryCard({
//     required this.date,
//     required this.time,
//     required this.price,
//     this.photoUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 150,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 image: DecorationImage(
//                   image: photoUrl != null
//                       ? NetworkImage(photoUrl!)
//                       : AssetImage(photoUrl!) as ImageProvider, // Local placeholder image
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 Icon(Icons.calendar_today, color: Colors.blue),
//                 SizedBox(width: 5),
//                 Text(
//                   '$date  $time',
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             Text(
//               '\$$price',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




// // class TravelHistoryCard extends StatelessWidget {
// //   final String date;
// //   final String time;
// //   final double price;
// //   final String photoUrl;

// //   TravelHistoryCard({
// //     required this.date,
// //     required this.time,
// //     required this.price,
// //     required this.photoUrl,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       elevation: 4,
// //       shape: RoundedRectangleBorder(
// //         borderRadius: BorderRadius.circular(10),
// //       ),
// //       child: Padding(
// //         padding: const EdgeInsets.all(8.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Container(
// //               height: 150,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(10),
// //                 image: DecorationImage(
// //                   image: NetworkImage(photoUrl),
// //                   fit: BoxFit.cover,
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 10),
// //             Row(
// //               children: [
// //                 Icon(Icons.calendar_today, color: Colors.blue),
// //                 SizedBox(width: 5),
// //                 Text(
// //                   '$date  $time',
// //                   style: TextStyle(fontSize: 16),
// //                 ),
// //               ],
// //             ),
// //             SizedBox(height: 10),
// //             Text(
// //               '\$$price',
// //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

