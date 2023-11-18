import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/OfficialPage/widgets/OfficialSlideImage.dart';
import 'package:flutter_app_project/apps/modules/widgets/MainAppBar.dart';

class OfficialPage extends StatefulWidget {
  const OfficialPage({super.key});

  @override
  State<OfficialPage> createState() => _OfficialPageState();
}

class _OfficialPageState extends State<OfficialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: MainAppBar(context), elevation: 0),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on),
                    Text("Sent to Kost Marlen Edzel Satriani")
                  ],
                ),
              ),
              OfficialSlideImage(),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 100, 20),
                color: Colors.red,
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
