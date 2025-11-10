import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/example_two/exmple_two.dart';

class HomeTwo extends StatefulWidget {
  const HomeTwo({super.key});

  @override
  State<HomeTwo> createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
  final ExampleTwoController exampleTwoController = Get.put(
    ExampleTwoController(),
  );

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('build $exampleTwoController.opacity.value');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text(
              'Opecity Controller',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Obx(
                () => Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    // ignore: deprecated_member_use
                    color: Colors.red.withOpacity(
                      exampleTwoController.opacity.value,
                    ),
                  ),
                ),
              ),
              Obx(
                () => Slider(
                  value: exampleTwoController.opacity.value,
                  // ignore: non_constant_identifier_names
                  onChanged: (value) {
                    exampleTwoController.setOpacity(value);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
