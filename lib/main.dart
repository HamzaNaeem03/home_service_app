// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:home_service_app/screens/homepage.dart';
import 'package:home_service_app/screens/service_details_screen.dart';
import 'package:home_service_app/screens/services_screen.dart';
import 'package:home_service_app/screens/signup&login/login.dart';
import 'package:home_service_app/screens/signup&login/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'home service app',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          
          primaryColor: Color.fromARGB(255, 234, 123, 88),
          accentColor: Color.fromARGB(255, 247, 223, 91),

          // fontFamily: 'Georgia',
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Color(0xFFa2a5a4)),
            headline6: TextStyle(color: Color(0xFFa2a5a4)),
            subtitle2: TextStyle(color: Color(0xFFa2a5a4)),
          )),
      // initialRoute: "/",
      routes: {
        // "/": (context) => const login(),
        "/login": (context) => const login(),
        "/signup": (context) => const signup(),
        "/home": (context) => const HomePage(),
        "/services" :(context) =>  ServicesScreen(),
        "/serviceDetails" :(context) =>  ServiceDetailsScreen(),
        // "/profile": (context) =>     ,
      },
      home: const signup()
    );
  }
}
