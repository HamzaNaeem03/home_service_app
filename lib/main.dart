// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:home_service_app/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guide to Theming in Flutter',
      theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 234, 123, 88),
          
          accentColor: const Color.fromARGB(255, 247, 223, 91),

          // fontFamily: 'Georgia',
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Color(0xFFa2a5a4)),
            subtitle2: TextStyle( color: Color(0xFFa2a5a4)),
          )),
      home: const HomePage(),
      
    );
  }
}
