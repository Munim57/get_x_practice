import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  RxString imagePath = ''.obs;
  Future getImage() async {
    // ignore: no_leading_underscores_for_local_identifiers
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path.toString();
    } else {
      Get.snackbar('No Image', 'No image selected.');
    }
  }
}
