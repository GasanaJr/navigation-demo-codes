// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './pages/Home.dart';
import './pages/Intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          appBarTheme: AppBarTheme(backgroundColor: Colors.blueGrey[900])),
      routes: {
        '/home': (context) => HomeScreen(data: "Hello World"),
        '/intro': (context) => IntroScreen()
      },
      home: IntroScreen(),
    );
  }
}
