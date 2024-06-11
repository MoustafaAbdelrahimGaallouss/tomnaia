import 'package:flutter/material.dart';
import 'package:tomnaia/Components/profilPhoto.dart';


class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}


