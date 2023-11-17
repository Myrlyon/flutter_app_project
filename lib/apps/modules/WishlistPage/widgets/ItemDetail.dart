import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final bool isFavorited;
  final VoidCallback onFavoritePressed;

  const ItemDetail({
    Key? key,
    required this.isFavorited,
    required this.onFavoritePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 226, 226, 226),
            offset: Offset(2, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/sepedagunung.jpg',
                    width: 100,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Tas Ransel Kanvas Unisex Climate \nSeries Free Rain Cover"),
                      Text(
                        "Rp.239999",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Kota Tangerang"),
                      Text("BINTANG | TERJUAL")
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: null, child: Text("data")),
                  ElevatedButton(onPressed: null, child: Text("data")),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
