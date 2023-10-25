import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/HomePage/HomePage.dart';
import 'package:flutter_app_project/apps/modules/WelcomePage/WelcomePage.dart';
import 'package:flutter_app_project/apps/modules/WishlistPage/WishlistPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WishlistPage(),
    );
  }
}
