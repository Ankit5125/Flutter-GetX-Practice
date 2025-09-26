import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final ImagePicker picker = ImagePicker();
  RxString imagePath = ''.obs;

  Future getImage(bool fromCamera) async {
    final image = await picker.pickImage(
      source: fromCamera ? ImageSource.camera : ImageSource.gallery,
    );
    if (image != null) {
      imagePath.value = image.path;
    }
  }
}
