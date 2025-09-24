import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Controllers/SwitchController.dart';

class StateManagementSwitch extends StatelessWidget {
  StateManagementSwitch({super.key});

  SwitchController controller = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Management (Switch)")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Notification"),
            Obx(
              () => Switch(
                value: controller.value.value,
                onChanged: (newValue) {
                  controller.changeValue(newValue);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
