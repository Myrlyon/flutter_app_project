import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app_project/apps/modules/widgets/BottomNavbar.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageController extends GetxController {
  late final SharedPreferences prefs;
  TextEditingController? cEmail;
  TextEditingController? cPass;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    cEmail = new TextEditingController();
    cPass = new TextEditingController();
  }

  loginUser() async {
    prefs = await SharedPreferences.getInstance();
    final baseUrl = 'https://reqres.in/api/login';
    isLoading.value = true;
    final response = await http.post(
      Uri.parse(baseUrl),
      body: {
        'Username': cEmail!.text,
        'Password': cPass!.text,
      },
    );
    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> getToken = jsonDecode(response.body);
        final token = getToken['token'];
        await prefs.setString("token", token);
        print('Token : $token');
        Get.off(BottomNavbar());
        isLoading.value = false;
      } else {
        Get.snackbar("Maaf", "Gagal Login");
      }
    } catch (e) {
      print(e);
    }
  }
}