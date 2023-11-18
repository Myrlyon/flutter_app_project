import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/CategoryScroll.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/NewItems.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/SlideImage.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/UserMoneyDetails.dart';
import 'package:flutter_app_project/apps/modules/widgets/MainAppBar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(flexibleSpace: MainAppBar(context), elevation: 0),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.fast),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                        height: 5,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CategoryScroll(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                NewItems(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Special Discount",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.yellow,
                  height: 400,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Best Dicount \nthis week",
                            style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w900, fontSize: 20),
                          ),
                          Text(
                            "Discount",
                            style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w900, fontSize: 18),
                          ),
                          Row(
                            children: [
                              Text(
                                "50",
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w800, fontSize: 60),
                              ),
                              Text("%",
                                  style: GoogleFonts.nunitoSans(
                                      fontWeight: FontWeight.w900))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 400,
                )
              ],
            ),
          ),
        ));
  }
}
