// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  final styles = ButtonStyle(
      backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
      foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
      textStyle: MaterialStatePropertyAll<TextStyle>(TextStyle(fontSize: 18)),
      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        title: Text(
          "IntroScreen",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text("Go to Home"),
          style: styles,
        ),
      ),
    );
  }
}
