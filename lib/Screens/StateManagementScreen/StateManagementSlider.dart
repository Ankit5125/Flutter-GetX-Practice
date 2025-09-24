import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Controllers/SliderController.dart';

class StateManagementSlider extends StatelessWidget {
  const StateManagementSlider({super.key});

  @override
  Widget build(BuildContext context) {
    SliderController controller = Get.put(SliderController());

    return Scaffold(
      appBar: AppBar(title: Text("State Management (Slider)")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Column(
                spacing: 20,
                children: [
                  Container(
                    height: Get.height * 0.4,
                    width: Get.width * 0.8,
                    color: Colors.lightGreen.withOpacity(
                      controller.value.value,
                    ),
                  ),
                  Slider(
                    value: controller.value.value,
                    onChanged: (newValue) {
                      controller.changeValue(newValue);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
