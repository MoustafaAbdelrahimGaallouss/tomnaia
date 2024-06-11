// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ProfilePhoto extends StatelessWidget {
//   final String userId;

//   const ProfilePhoto({
//     Key? key,
//     required this.userId,
//   }) : super(key: key);

//   Future<String> getUserPicture(String id) async {
//     final response = await http.get(Uri.parse('http://yourapi.com/get-picture?id=$id'));
//     if (response.statusCode == 200) {
//       return response.body;
//     } else {
//       throw Exception('Failed to load user picture');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 16.0, top: 8.0),
//       child: FutureBuilder<String>(
//         future: getUserPicture(userId),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const CircleAvatar(
//               radius: 30,
//               backgroundColor: Color.fromARGB(255, 3, 26, 68),
//               child: CircularProgressIndicator(
//                 color: Colors.white,
//               ),
//             );
//           } else if (snapshot.hasError) {
//             return const CircleAvatar(
//               radius: 30,
//               backgroundColor: Color.fromARGB(255, 3, 26, 68),
//               child: Icon(
//                 Icons.error,
//                 color: Colors.red,
//               ),
//             );
//           } else if (snapshot.hasData) {
//             return CircleAvatar(
//               radius: 30,
//               backgroundColor: const Color.fromARGB(255, 3, 26, 68),
//               child: CircleAvatar(
//                 radius: 28,
//                 backgroundImage: NetworkImage(snapshot.data!),
//               ),
//             );
//           } else {
//             return const CircleAvatar(
//               radius: 30,
//               backgroundColor: Color.fromARGB(255, 3, 26, 68),
//               child: Icon(
//                 Icons.person,
//                 color: Colors.white,
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }


//___________________________________________________________________________
import 'package:tomnaia/Screens/profileScreen.dart';

import 'package:flutter/material.dart';


class ProfilePhoto extends StatelessWidget {
  
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(right: 16.0, top: 8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Profilescreen(),));
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color.fromARGB(255, 3, 26, 68),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/IMG20240127180400.jpg"),
          ),
        ),
      ),
    );
  }
}
