import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Screens/StateManagementScreen/StateManagementScreen.dart';

class StateManagment extends StatelessWidget {
  const StateManagment({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("State Management Example"),
        onTap: () {
          Get.to(StateManagementScreen());
        },
      ),
    );
  }
}
