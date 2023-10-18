import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //Add custom AppBar
          ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on),
                Text("Sent to Kost Marlen Edzel Satriani")
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.monetization_on,
                  size: 40,
                ),
                Column(
                  children: [
                    Text(
                      "Money",
                      textAlign: TextAlign.start,
                    ),
                    Text("Cashback Coins"),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "Try for 1 Months",
                      textAlign: TextAlign.start,
                    ),
                    Text("Subscribe here!"),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "Marlen Edzel Satriani",
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      "Silver",
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.panorama_fisheye_outlined,
                  size: 40,
                )
              ],
            ),
            Text("data"),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
