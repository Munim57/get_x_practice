import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/get_x_counter_controller/counter_controller.dart';

class OneScreen extends StatefulWidget {
  const OneScreen({super.key});

  @override
  State<OneScreen> createState() => _OneScreenState();
}

final CounterController controller = Get.put(CounterController());
// int numb = 0;

class _OneScreenState extends State<OneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'GetX Counter',
              style: TextStyle(color: Color(0xff000000), fontSize: 24),
            ),
          ),
        ),
        body: Center(
          child: Obx(() {
            return Text(
              controller.count.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.incrementcount();
            // setState(() {
            //   numb++;
            //   // ignore: avoid_print
            //   print('re-build $numb');
            // });
          },
          child: Center(child: Icon(Icons.add)),
        ),
      ),
    );
  }
}
