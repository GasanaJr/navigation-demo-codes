// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.data});
  final styles = ButtonStyle(
      backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
      foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
      textStyle: MaterialStatePropertyAll<TextStyle>(TextStyle(fontSize: 18)),
      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))));
  final String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        title: Text(
          "HomeScreen",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/intro');
              },
              child: Text("Go to Intro"),
              style: styles,
            ),
          ),
          Center(
            child: Text(data),
          )
        ],
      ),
    );
  }
}
