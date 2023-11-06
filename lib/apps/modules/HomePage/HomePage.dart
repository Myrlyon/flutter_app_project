import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/CategoryScroll.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/UserMoneyDetails.dart';
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
        appBar: AppBar(
            //Add custom AppBar
            ),
        bottomNavigationBar: null,
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
                UserMoneyDetails(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.red,
                  height: 250,
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Text("")),
                ),
                SizedBox(
                  height: 30,
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
              ],
            ),
          ),
        ));
  }
}
