import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble value = 0.5.obs;

  changeValue(double newValue) {
    value.value = newValue;
  }
}
