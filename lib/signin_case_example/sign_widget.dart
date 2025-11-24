import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class SignController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  void signinApi() async {
    try {
      final response = await post(
        Uri.parse('https://funfit.econovoo.com/api/login'),
        body: {
          'email': emailController.value.text,
          'password': passwordController.value.text,
        },
      );

      var data = jsonDecode(response.body);
      // ignore: avoid_print
      print(response.statusCode);
      // ignore: avoid_print
      print(data);
      if (response.statusCode == 200) {
        Get.snackbar('Login Successful', 'Congrations');
      } else {
        Get.snackbar('Login Failed', 'Incorrect');
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
    }
  }
}
