// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../components/homepage/availableservices.dart';
import '../components/homepage/bottomnav.dart';
// import 'package:home_service_app/components/homepage/topbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.all(8),
            // padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.menu,
              color: Theme.of(context).primaryColor,
            ),
          ),
          title: Container(
              height: 50,
              margin: const EdgeInsets.all(8),
              child: TextField(
                  decoration: InputDecoration(
                filled: false,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                ),
                hintText: "What are you looking for?",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).primaryColor,
                ),
              ))),
        ),
        body: const AvailableServices(),
        bottomNavigationBar: bottomNavBar(),
      ),
    );
  }
}
