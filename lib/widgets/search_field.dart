import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return  TextField(
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
         border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
                width: 0, 
                style: BorderStyle.none,
            ),
        ),

        filled: true,
        fillColor: const Color.fromARGB(255, 225, 225, 225),
        hintText: "Search...",
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: Colors.black,
        suffixIcon: const Icon(Icons.filter_alt_outlined),
        suffixIconColor: Colors.black
      ),
    );
  }
}