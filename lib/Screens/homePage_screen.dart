// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tomnaia/Components/profilPhoto.dart';



String ToWhere='No Scheduled Ride';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
        backgroundColor: const Color(0xFFF3F3F3),
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
          child: Container(
            height: double.infinity,
            child: ListView(
              children: const [
                Text("Rides",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                SearchBar(),
                PlaceWidget(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/**



import 'home_screen.dart';
import 'settings_screen.dart';
import 'history_screen.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> screens = [
    HomeScreen(),
    HistoryScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NavigationProvider>(
        builder: (context, navigationProvider, child) {
          return screens[navigationProvider.currentIndex];
        },
      ),
      bottomNavigationBar: Consumer<NavigationProvider>(
        builder: (context, navigationProvider, child) {
          return BottomNavigationBar(
            currentIndex: navigationProvider.currentIndex,
            onTap: (index) {
              navigationProvider.setIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          );
        },
      ),
    );
  }
}

 */



class PlaceWidget extends StatelessWidget {
  const PlaceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16.0),
      child: Container(
        decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadius.circular(18.0),
        ),
        height: 100,
        child: InkWell(
            // onTap: () {
            //   Pleces.add('$ToWhere');
            // },
            child: Center(
              child: Text(
                "${ToWhere}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                  ),
              ),
            )),
      ),
    );
  }
}





// ListView.builder(
//                     itemCount: Pleces.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         child:Text('${Pleces[index]}')

//                         );
//                     })





// class ProfilePhoto extends StatelessWidget {

//   const ProfilePhoto({
//     super.key,

//   });

//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.only(right: 16.0, top: 8.0),
//       child: CircleAvatar(
//         radius: 30,
//         backgroundColor: Color.fromARGB(255, 3, 26, 68),
//         child: CircleAvatar(
//           backgroundImage: AssetImage("assets/images/IMG20240127180400.jpg"),
//         ),
//       ),
//     );
//   }
// }

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    // this.ToWhere,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      //TextField
      decoration: InputDecoration(
          hintText: "Where to ?",
          //hintStyle
          hintStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          prefixIcon: const Icon(
            Icons.search,
            size: 35,
            weight: 900,
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.grey,
          border: OutlineInputBorder(
              borderSide: const BorderSide(width: 0.0, color: Colors.white),
              borderRadius: BorderRadius.circular(25.0))),
      onChanged: (toPalce) {
        ToWhere = toPalce;
      },
    );
  }
}



// class listViewBuilder extends StatelessWidget {
 

//   List ViewList;
//   Widget ViewWidget;
//    listViewBuilder({super.key,required this.ViewList,required this.ViewWidget});

//   @override
//   Widget build(BuildContext context) {
//     return  ListView.builder(
//         itemCount: ViewList.length ,
//         itemBuilder: (context,index) {
//           return ViewList[index];
//         }
        
//       );
//   }
// }



// // ignore: must_be_immutable
// class listViewBuilder extends StatelessWidget {
 

//   List ViewList;
  
//    listViewBuilder({super.key,required this.ViewList,});

//   @override
//   Widget build(BuildContext context) {
//     return  ListView.builder(
//         itemCount: ViewList.length ,
//         itemBuilder: (context,index) {
//           return ;
//         }
        
//       );
//   }
// }