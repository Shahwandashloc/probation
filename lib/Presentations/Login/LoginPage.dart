import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/App_routes.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/1.jpg"), fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.black.withOpacity(0),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.yellow,
                        child: Icon(
                          Icons.car_rental_rounded,
                          size: 30,
                        ),
                      ),
                      Container(
                        color: Colors.green.shade200,
                        child: Icon(
                          Icons.dining_sharp,
                          size: 30,
                        ),
                      ),
                      Container(
                        color: Colors.blue.shade300,
                        child: Icon(
                          Icons.flight_takeoff,
                          size: 30,
                        ),
                      ),
                      Text(
                        "Expensify",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blue.shade300,
                        child: Icon(Icons.dinner_dining_sharp),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Concierge",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Welcome! How would you like to connect?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 80,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.lightBlue,
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(fontSize: 13),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20)),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 80,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.chat_bubble,
                            color: Colors.green.shade300,
                          ),
                          hintText: "Phone number",
                          hintStyle: TextStyle(fontSize: 13),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20)),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.green.shade700)),
                    onPressed: () {
                      Get.toNamed(AppRoutes.Joining);
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160),
                    child: Text(
                      "You weren't born to do expenses",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Divider(
                      color: Colors.yellow.shade700,
                      thickness: 5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "The OutBound Life",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Expensify customer till 2018",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "By logging in, you agree to the ",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        "privacy policy",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 11,
                            color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
