import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/WishlistPage/Detail/DetailWishlistPage.dart';
import 'package:flutter_app_project/apps/modules/WishlistPage/widgets/recomendedItems.dart';
import 'package:flutter_app_project/apps/modules/widgets/MainAppBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: MainAppBar(context), elevation: 0),
      bottomNavigationBar: null,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(DetailWishlistPage());
                },
                child: Container(
                  width: 350,
                  height: 200,
                  child: Image.asset("assets/fotowishlist.jpg"),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Semua Wishlist",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "6 Barang",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Description',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(height: 10),
              recomendedItems()
            ],
          ),
        ),
      ),
    );
  }
}
