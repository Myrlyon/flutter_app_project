import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScroll extends StatelessWidget {
  const CategoryScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ClickBox("See \n Others", Icons.help_outline_sharp, 50),
            ClickBox("Top-up", Icons.games_outlined, 20),
            ClickBox("Game \n Vouchers", Icons.airplane_ticket_outlined, 20),
            ClickBox("New Offers", Icons.newspaper_outlined, 20),
            ClickBox("New Offers", Icons.newspaper_outlined, 20),
            ClickBox("New Offers", Icons.newspaper_outlined, 20),
          ],
        ));
  }
}

Widget ClickBox(NamaInput, IconInput, double RadiusInput) {
  return Container(
    width: 100,
    height: 110,
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(RadiusInput)),
            color: Color.fromARGB(255, 228, 228, 228),
          ),
          child: Icon(
            IconInput,
            size: 55,
          ),
        ),
        Text(
          NamaInput,
          textAlign: TextAlign.center,
          style: GoogleFonts.nunitoSans(),
        )
      ],
    ),
  );
}
