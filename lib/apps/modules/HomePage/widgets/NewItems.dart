import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewItems extends StatelessWidget {
  const NewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          NewItemsItem("assets/ikan.jpg", "  Audiophile", "Earphone"),
          SizedBox(
            width: 20,
          ),
          NewItemsItem("assets/ikan.jpg", "  Audiophile", "Earphone"),
          SizedBox(
            width: 20,
          ),
          NewItemsItem("assets/ikan.jpg", "  Audiophile", "Earphone"),
          SizedBox(
            width: 20,
          ),
          NewItemsItem("assets/ikan.jpg", "  Audiophile", "Earphone"),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}

Widget NewItemsItem(ItemsImage, ItemsLabel1, ItemsLabel2) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
    child: Container(
        height: 220,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(),
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              color: Color.fromARGB(255, 138, 138, 138),
              blurRadius: 3,
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(ItemsImage), fit: BoxFit.cover)),
              height: 160,
              width: double.infinity,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Column(
                children: [
                  Text(ItemsLabel1, style: GoogleFonts.nunitoSans()),
                  Text(
                    ItemsLabel2,
                    style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        )),
  );
}
