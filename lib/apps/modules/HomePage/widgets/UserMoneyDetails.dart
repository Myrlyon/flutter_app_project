import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserMoneyDetails extends StatefulWidget {
  const UserMoneyDetails({Key? key});

  @override
  State<UserMoneyDetails> createState() => _UserMoneyDetailsState();
}

class _UserMoneyDetailsState extends State<UserMoneyDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   color: Colors.red,
      //   borderRadius: BorderRadius.all(Radius.circular(2)),
      // ),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 1, // Left-aligned
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.monetization_on,
                    size: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rp0",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.nunitoSans(),
                      ),
                      Text(
                        "200 Coins",
                        style: GoogleFonts.nunitoSans(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1, // Center-aligned
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.label_important_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Try for 1 Month",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.nunitoSans(),
                      ),
                      Text(
                        "Subscribe here!",
                        style: GoogleFonts.nunitoSans(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1, // Right-aligned
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Marlen",
                        style: GoogleFonts.nunitoSans(),
                        textAlign: TextAlign.end,
                      ),
                      Text(
                        "Silver",
                        style: GoogleFonts.nunitoSans(),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.panorama_fisheye_outlined,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
