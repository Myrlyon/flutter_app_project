import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/CategoryScroll.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/NewItems.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/SlideImage.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/UserMoneyDetails.dart';
import 'package:flutter_app_project/apps/modules/widgets/MainAppBar.dart';
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
        appBar: AppBar(flexibleSpace: MainAppBar(context), elevation: 0),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.fast),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
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
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CategoryScroll(),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: NewItems(),
                ),
                SizedBox(
                  height: 200,
                )
              ],
            ),
          ),
        ));
  }
}
