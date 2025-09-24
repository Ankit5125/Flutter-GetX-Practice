import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Classes/CounterClass.dart';

// class  extends StatelessWidget {
//   const StateManagementScreen({super.key});

// }

class StateManagementScreen extends StatelessWidget {
  StateManagementScreen({super.key});

  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Management Screen")),
      body: Center(
        child: Obx(
          () => Text(
            "${controller.counter}",
            style: TextStyle(fontSize: Get.width * 0.2),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increament();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
