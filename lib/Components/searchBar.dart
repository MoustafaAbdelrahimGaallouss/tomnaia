import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
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
    );
  }
}

