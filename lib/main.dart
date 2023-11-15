import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/widgets/BottomNavbar.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Use GetMaterialApp instead of MaterialApp
      home: BottomNavbar(),
    );
  }
}
