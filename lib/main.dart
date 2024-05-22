import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/App_pages.dart';
import 'package:flutter_application_1/Routes/App_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.Login,
      getPages: AppPages.Lists,
    );
  }
}
