import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/HomePage/widgets/NewItems.dart';
import 'package:flutter_app_project/apps/modules/OfficialPage/widgets/BackpackCategoryItems.dart';
import 'package:flutter_app_project/apps/modules/OfficialPage/widgets/FashionCategoryItems.dart';
import 'package:flutter_app_project/apps/modules/OfficialPage/widgets/OfficialSlideImage.dart';
import 'package:flutter_app_project/apps/modules/widgets/MainAppBar.dart';
import 'package:google_fonts/google_fonts.dart';

class OfficialPage extends StatefulWidget {
  const OfficialPage({super.key});

  @override
  State<OfficialPage> createState() => _OfficialPageState();
}

class _OfficialPageState extends State<OfficialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: MainAppBar(context), elevation: 0),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on),
                    Text("Sent to Kost Marlen Edzel Satriani"),
                  ],
                ),
              ),
              OfficialSlideImage(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                height: 50,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Fashion',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              FashionCategoryItems(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                height: 50,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Console',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              BackpackCategoryItems(),
            ],
          ),
        ),
      ),
    );
  }
}
