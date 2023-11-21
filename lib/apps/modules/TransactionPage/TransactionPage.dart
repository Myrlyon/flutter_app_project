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

  @override
  void initState() {
    super.initState();
    _itemList = [];
    ItemModelMain(_itemList);
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  color: Color.fromARGB(255, 192, 192, 192),
                  blurRadius: 3,
                ),
              ],
            ),
            margin: EdgeInsets.all(20),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.shopping_bag),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Belanja',
                          ),
                          Text(
                            '20 Agustus 2023',
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.money),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stick PS4',
                          ),
                          Text(
                            '1 Barang',
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Belanja',
                          ),
                          Text(
                            'Rp. 300000',
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
