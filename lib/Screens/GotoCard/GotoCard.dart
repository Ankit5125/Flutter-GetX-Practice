import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Screens/ScreenTwo/ScreenTwo.dart';

class GotoCard extends StatelessWidget {
  const GotoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Goto Screen Two"),
        onTap: () {
          Get.to(ScreenTwo());
        },
      ),
    );
  }
}
