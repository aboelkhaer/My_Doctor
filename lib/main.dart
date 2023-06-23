import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constants/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Doctor',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
    );
  }
}
