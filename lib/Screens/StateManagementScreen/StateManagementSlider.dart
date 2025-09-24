import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManagementSlider extends StatelessWidget {
  const StateManagementSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Management (Slider)")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Get.height * 0.4,
            width: Get.width * 0.8,
            color: Colors.lightGreen,
          ),
        ],
      ),
    );
  }
}
