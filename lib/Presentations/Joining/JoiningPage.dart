import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Routes/App_routes.dart';
import 'package:get/get.dart';

class JoiningPage extends StatelessWidget {
  const JoiningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/2.jpg"), fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.black.withOpacity(0),
            child: SafeArea(
              child: Column(
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
                      ),
                    ],
                  ),
                  Text(
                    "I don't recognize\ngiyig5398@resmail24.com. Would\nyou like to join with that email?",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color?>(
                                Colors.transparent),
                            elevation: WidgetStateProperty.all<double>(0),
                          ),
                          onPressed: () {
                            Get.toNamed(AppRoutes.Login);
                          },
                          child: Text(
                            "Back",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Colors.green.shade700)),
                          onPressed: () {
                            Get.toNamed(AppRoutes.Home);
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 280),
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
                    "Barworks",
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
