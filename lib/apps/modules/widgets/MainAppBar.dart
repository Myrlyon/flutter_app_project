import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MainAppBar() {
  return AppBar(
    title: const CupertinoSearchTextField(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      autofocus: true,
      prefixIcon: Icon(
        Icons.search,
        size: 18,
      ),
      placeholder: "Find any items",
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      IconButton(
        icon: const Icon(
          Icons.notifications,
          color: Colors.grey,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(
          Icons.shopping_cart_rounded,
          color: Colors.grey,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(
          Icons.format_list_bulleted_rounded,
          color: Colors.grey,
        ),
        onPressed: () {
          // Navigator.pop(context);
        },
      ),
    ],
  );
}