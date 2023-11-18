import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/model/ItemModel.dart';
import 'package:google_fonts/google_fonts.dart';

class NewItems extends StatefulWidget {
  const NewItems({super.key});

  @override
  State<NewItems> createState() => _NewItemsState();
}

class _NewItemsState extends State<NewItems> {
  List<ItemModel> itemModelList = [];

  @override
  void initState() {
    super.initState();
    ItemModelMain(itemModelList);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 269,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemModelList.length,
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
                margin: EdgeInsets.only(left: 20),
                height: 220,
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
                      height: 160,
                      width: double.infinity,
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

class DetailPage extends StatelessWidget {
  final ItemModel item;

  const DetailPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
        backgroundColor: Colors.white,
        elevation: 0.5,
        titleTextStyle:
            GoogleFonts.nunitoSans(color: Colors.black, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              item.image,
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text('Name: ${item.name}', style: TextStyle(fontSize: 18)),
            Text('Seller: ${item.seller}', style: TextStyle(fontSize: 18)),
            Text('Description: ${item.description}',
                style: TextStyle(fontSize: 18)),
            Text('Price: ${item.price}', style: TextStyle(fontSize: 18)),
            Text('Rating: ${item.rating}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
