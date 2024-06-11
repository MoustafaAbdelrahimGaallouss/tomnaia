import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tomnaia/models/model1.dart';
import 'package:tomnaia/Screens/homePage_screen.dart';
import 'package:tomnaia/Screens/history_screen.dart';
import 'package:tomnaia/Components/settings.dart';


class MainScreen extends StatelessWidget {
  final List<Widget> screens = [
    HomePage(),
    HistoryScreen(),
    Settings(),
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
             backgroundColor: Colors.white,
             selectedItemColor: Colors.blue,
             unselectedItemColor: Colors.black,
             selectedIconTheme: const IconThemeData(size: 35),
              iconSize: 30,
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


//  bottomNavigationBar: BottomNavigationBar(
//           onTap: (val) {
           
//           },
//          
//           
//           
//           
          
//          
//           items: const [
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.history_outlined), label: ''),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: '',
//             ),
//             BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
//           ],
//         ),