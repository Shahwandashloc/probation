import 'package:flutter_application_1/Presentations/Camera/CameraPage.dart';
import 'package:flutter_application_1/Presentations/Home/HomePage.dart';
import 'package:flutter_application_1/Presentations/Joining/JoiningPage.dart';
import 'package:flutter_application_1/Presentations/Login/LoginPage.dart';
import 'package:flutter_application_1/Routes/App_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static var Lists = [
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginPage(),
    ),
    GetPage(
      name: AppRoutes.Joining,
      page: () => JoiningPage(),
    ),
    GetPage(
      name: AppRoutes.Home,
      page: () => HomePage(),
    ),
    GetPage(
      name: AppRoutes.Camera,
      page: () => CameraPage(),
    )
  ];
}
