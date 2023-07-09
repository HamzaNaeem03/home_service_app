import 'package:flutter/material.dart';

class bottomNavBar extends StatelessWidget {
  const bottomNavBar({super.key});

  get onTap => null;

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined,),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          label: 'notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_sharp),
          label: 'calander',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_4_outlined),
          label: 'profile',
        )
      ],
      currentIndex: selectedIndex, // the variable is undefined
      onTap: (value) => () {},
      // the function is undefined
      selectedItemColor: Color.fromARGB(255, 234, 123, 88),
      backgroundColor: Colors.transparent,
      unselectedItemColor:  Color(0xFFa2a5a4),
    );
  }
}
