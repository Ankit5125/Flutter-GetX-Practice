import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool value = false.obs;

  changeValue(bool newValue) {
    value.value = newValue;
  }
}
