import 'package:flutter/material.dart';
import 'package:flutter_app_project/controller/Login_Controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  LoginController loginController = Get.put(LoginController());

  Widget myText(
      String label, bool isObsecure, TextEditingController myController) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: myController,
        obscureText: isObsecure,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text("Login",
              style: GoogleFonts.nunitoSans(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(
              height: 20,
            ),
            myText('Username', false, ctrUsername),
            myText('Password', true, ctrPassword),
            ElevatedButton(onPressed: () =>
                loginController.loginAction(ctrUsername.text, ctrPassword.text),
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}