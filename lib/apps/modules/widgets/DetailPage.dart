import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/model/ItemModel.dart';
import 'package:google_fonts/google_fonts.dart';

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
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                item.image,
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
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
