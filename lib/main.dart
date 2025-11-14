import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:get_x_practice/signin_case_example/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: Signin());
  }
}
