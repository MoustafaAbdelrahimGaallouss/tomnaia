import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tomnaia/models/model1.dart';
import 'MainScreen.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (_) => NavigationProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:MainScreen(), // Set MainScreen as the home screen
      ),
    );
  }
}
