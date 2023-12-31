import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/WishlistPage/widgets/ItemDetail.dart';

class DetailWishlistPage extends StatefulWidget {
  @override
  _DetailWishlistPageState createState() => _DetailWishlistPageState();
}

class _DetailWishlistPageState extends State<DetailWishlistPage> {
  List<bool> isFavoritedList = List.generate(5, (index) => false);

  @override
  void dispose() {
    isFavoritedList = List.generate(5, (index) => false);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        setState(() {
          isFavoritedList = List.generate(5, (index) => false);
        });
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Detail Wishlist', style: TextStyle(color: Colors.black)),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              5,
              (index) => ItemDetail(
                isFavorited: isFavoritedList[index],
                onFavoritePressed: () {
                  setState(() {
                    isFavoritedList[index] = !isFavoritedList[index];
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
