import 'package:flutter/material.dart';

// not being used due to colour issue
class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () {
                    Navigator.pop(context);
                  },
        child: Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.all(8),
          // padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 247, 223, 91),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            Icons.menu,
            color: Color.fromARGB(255, 234, 123, 88),
          ),
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
              color:Color.fromARGB(255, 234, 123, 88),
            ),
          ))),
    );
  }
}
