import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/model/ItemModel.dart';
import 'package:flutter_app_project/apps/modules/widgets/DetailPage.dart';
import 'package:google_fonts/google_fonts.dart';

class recomendedItems extends StatefulWidget {
  const recomendedItems({super.key});

  @override
  State<recomendedItems> createState() => _recomendedItemsState();
}

class _recomendedItemsState extends State<recomendedItems> {
  List<ItemModel> itemModelList = [];

  @override
  void initState() {
    super.initState();
    ItemModelMain(itemModelList);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      child: ListView.builder(
        itemCount: 5,
        itemExtent: 180,
        itemBuilder: (context, index) {
          ItemModel item = itemModelList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(item: item),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              child: Container(
                height: 250,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      color: Color.fromARGB(255, 192, 192, 192),
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(item.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 90,
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.name, style: GoogleFonts.nunitoSans()),
                          Text(item.seller,
                              style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
