import 'package:flutter/material.dart';

class CategoryScroll extends StatelessWidget {
  const CategoryScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 100,
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "See \n Others",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "See \n Others",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
