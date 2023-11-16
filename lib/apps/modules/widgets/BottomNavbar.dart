import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/HomePage/HomePage.dart';
import 'package:flutter_app_project/apps/modules/WishlistPage/WishlistPage.dart';

class BottomNavbar extends StatefulWidget {
  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar>
    with TickerProviderStateMixin {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void navigationTapped(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    // this is all pages here in list we can choose index when click bottom navigation bar
    List<Widget> _allPages = [
      HomePage(),
      WishlistPage(),
      WishlistPage(),
      WishlistPage(),
    ];

    return Scaffold(
      body: _allPages[_currentIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  // Bottom navigation bar area you can choose icons what you want.
  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: navigationTapped,
      // iconSize: 28,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            label: 'Official'),
        BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Wishlist'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Transaction'),
      ],
    );
  }
}
