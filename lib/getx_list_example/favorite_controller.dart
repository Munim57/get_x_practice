import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<String> furitslist = [
    'Mango',
    'Bnana',
    'Apple',
    'Peach',
    'Ornage',
    'Graps',
  ].obs;
  RxList tempfruitlist = [].obs;

  addToFavourite(String value) {
    tempfruitlist.add(value);
  }

  removeFromFavourite(String value) {
    tempfruitlist.remove(value);
  }
}
