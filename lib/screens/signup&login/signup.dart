import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Center(
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
                        "Enter details to create a new account",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                    Container(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 160,
                          height: 40,
                          child: TextFormField(
                              decoration: InputDecoration(
                            filled: false,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                            labelText: "First Name",
                          )),
                        ),
                        SizedBox(
                          width: 160,
                          height: 40,
                          child: TextFormField(
                              decoration: InputDecoration(
                            filled: false,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                            labelText: "Last Name",
                          )),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 160,
                          height: 40,
                          child: TextFormField(
                              decoration: InputDecoration(
                            filled: false,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                            ),
                            labelText: "Username",
                          )),
                        ),
                        Container(
                          height: 25,
                        ),
                        SizedBox(
                          width: 160,
                          height: 40,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: false,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.grey),
                              ),
                              labelText: "Password",
                            ),
                            
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 234, 123, 88)),
                  child: Text("create account",
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  }),
              Container(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 234, 123, 88)),
                  child: Text("already have a account",
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  }),
              Container(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
