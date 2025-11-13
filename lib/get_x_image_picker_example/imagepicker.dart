// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_x_practice/get_x_image_picker_example/imagecontroller.dart';

// class Imagepicker extends StatefulWidget {
//   const Imagepicker({super.key});

//   @override
//   State<Imagepicker> createState() => _ImagepickerState();
// }

// class _ImagepickerState extends State<Imagepicker> {
//   final ImageController controller = Get.put(ImageController());

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.teal,
//           title: const Center(child: Text('GetX Image Picker')),
//         ),
//         body: Obx(() {
//           return Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // ✅ Corrected Image Display
//                 controller.imagePath.isNotEmpty
//                     ? CircleAvatar(
//                         radius: 60,
//                         backgroundImage: FileImage(
//                           File(controller.imagePath.value),
//                         ),
//                       )
//                     : const CircleAvatar(
//                         radius: 60,
//                         backgroundImage: AssetImage('assets/default.png'),
//                       ),

//                 const SizedBox(height: 20),

//                 ElevatedButton(
//                   onPressed: () => controller.getImage(),
//                   child: const Text('Pick Image'),
//                 ),
//               ],
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/get_x_image_picker_example/imagecontroller.dart';

class Imagepicker extends StatefulWidget {
  const Imagepicker({super.key});

  @override
  State<Imagepicker> createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
  final ImageController controller = Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text('Get X Image Picker')),
        ),
        body: Obx(() {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: controller.imagePath.isNotEmpty
                      ? FileImage(File(controller.imagePath.value))
                      : null,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.getImage();
                  },
                  child: Text('Pick Image'),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
