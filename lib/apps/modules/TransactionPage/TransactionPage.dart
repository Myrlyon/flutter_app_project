import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/model/ItemModel.dart';
import 'package:flutter_app_project/apps/modules/widgets/MainAppBar.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  late List<ItemModel> _itemList;
  late ItemModel _currentItem;

  @override
  void initState() {
    super.initState();
    _itemList = [];
    ItemModelMain(_itemList);
    _currentItem = _itemList.isNotEmpty ? _itemList.first : ItemModel("", "", "", "", 0, 0, "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: MainAppBar(context),
        elevation: 0,
      ),
      bottomNavigationBar: null,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Stack(
            children: [
              Container(
                width: 480,
                height: 260,
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
              Positioned(
                top: 10,
                right: 15,
                child: IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {
                    // Add your action here
                  },
                ),
              ),
              Positioned(
                top: 10,
                left: 20,
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                      size: 40,
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _currentItem.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Nunito Sans',
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '20 Agustus 2023',
                          style: TextStyle(
                            color: Color(0xFF6F6F6F),
                            fontSize: 13,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.bold,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 60),
                width: 150,
                height: 140,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(_currentItem.image),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                right: 20,
                child: Container(
                  width: 70,
                  height: 30,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          width: 70,
                          height: 30,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFC800),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 6,
                        child: Text(
                          'Ulas',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 100, // Adjust the right value as needed
                child: Container(
                  width: 90,
                  height: 30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 90,
                          height: 30,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFFFC800)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 6,
                        child: Text(
                          'Beli Lagi',
                          style: TextStyle(
                            color: Color(0xFFFFC800),
                            fontSize: 15,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 210,
                left: 20,
                child: Text(
                  'Total Belanja',
                  style: TextStyle(
                    color: Color(0xFF6F6F6F),
                    fontSize: 15,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                top: 230,
                left: 20,
                child: Text(
                  'Rp.${_currentItem.price}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
