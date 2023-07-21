import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
            ),
            Text(
              "Welcome to the Service App ",
              style: Theme.of(context).textTheme.headline6,
            ),
            Container(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Enter your Username and password to continue",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  Container(
                    height: 25,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                        decoration: InputDecoration(
                      filled: false,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                      ),
                      labelText: "username",
                      hintText: "enter username",
                      hintStyle: const TextStyle(color: Colors.grey),
                    )),
                  ),
                  Container(
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                        decoration: InputDecoration(
                      filled: false,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                      ),
                      labelText: "password",
                      hintText: "enter password",
                      hintStyle: const TextStyle(color: Colors.grey),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
            ),
            ElevatedButton(
                child: Text("continue", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                }),
            Container(
              height: 50,
            ),
            ElevatedButton(
                child: Text("create a new account",
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                }),
            Container(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
