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
        child: Row(
          children: [
            UserMoneyItem(
                MainAxisAlignment.start, 6, "Rp0", '200 Coins', Icons.money),
            UserMoneyItem(MainAxisAlignment.center, 6, "Try for 1", 'Subscribe',
                Icons.subscript_rounded),
            UserMoneyItem(MainAxisAlignment.end, 6, "Marlen", 'Silver',
                Icons.hexagon_rounded),
          ],
        ),
      ),
    );
  }
}

Widget UserMoneyItem(
    MainAlignment, double ItemRadius, ItemLabel1, ItemLabel2, ItemIcon) {
  return Expanded(
    flex: 1, // Left-aligned
    child: Row(
      mainAxisAlignment: MainAlignment,
      children: [
        InkWell(
            borderRadius: BorderRadius.all(Radius.circular(ItemRadius)),
            onTap: () => null,
            child: Container(
              padding: EdgeInsets.all(6),
              child: Row(
                children: [
                  Icon(
                    ItemIcon,
                    size: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ItemLabel1,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.nunitoSans(),
                      ),
                      Text(
                        ItemLabel2,
                        style: GoogleFonts.nunitoSans(),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    ),
  );
}
