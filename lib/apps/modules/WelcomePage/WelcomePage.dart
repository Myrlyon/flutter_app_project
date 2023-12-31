import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/LoginPage/LoginPage.dart';
import 'package:flutter_app_project/apps/modules/widgets/BottomNavbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(50),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "The Future of \n Online \n Marketplace",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunitoSans(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Text(
                    "Discover a diverse world of shopping \n  options at our all-in-one General \n Marketplace.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunitoSans(fontSize: 16),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {
                          Get.off(LoginPage());
                        },
                        child: Text("Continue",
                            style: GoogleFonts.nunitoSans(
                                fontSize: 20, fontWeight: FontWeight.w700))),
                  ),
                ],
              ),
            )));
  }
}
