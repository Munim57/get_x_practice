import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<String> furitslist = [
    'Mango',
    'Bnana',
    'Apple',
    'Peach',
    'Ornage',
  ].obs;
  RxList tempfruitlist = [].obs;
}
