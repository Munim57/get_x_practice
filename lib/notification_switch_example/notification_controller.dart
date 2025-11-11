import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxBool notifiaction = false.obs;
  setNotification(bool value) {
    notifiaction.value = value;
  }
}
