import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;
  incrementcount() {
    count.value++;
    // ignore: avoid_print
    print(count.value);
  }
}
