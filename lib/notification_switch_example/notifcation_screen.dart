import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/notification_switch_example/notification_controller.dart';

class NotifcationScreen extends StatefulWidget {
  const NotifcationScreen({super.key});

  @override
  State<NotifcationScreen> createState() => _NotifcationScreenState();
}

class _NotifcationScreenState extends State<NotifcationScreen> {
  final NotificationController notificationController = Get.put(
    NotificationController(),
  );
  //bool notification = false;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('Re-Build');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text(
              'Notification',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notification'),
                Obx(
                  () => Switch(
                    value: notificationController.notifiaction.value,
                    onChanged: (value) {
                      notificationController.setNotification(value);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
