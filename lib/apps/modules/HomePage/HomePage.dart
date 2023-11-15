import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/CategoryScroll.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/NewItems.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/SlideImage.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/UserMoneyDetails.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const CupertinoSearchTextField(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            autofocus: true,
            prefixIcon: Icon(
              Icons.search,
              size: 18,
            ),
            placeholder: "Find any items",
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_rounded,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.format_list_bulleted_rounded,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on),
                    Text("Sent to Kost Marlen Edzel Satriani")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                UserMoneyDetails(),
                SizedBox(
                  height: 20,
                ),
                SlideImage(),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CategoryScroll(),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "New Items check it out!",
                    style: GoogleFonts.nunitoSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                NewItems(),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ));
  }
}
