import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Screens/LocalizationExample/Localization.dart';

class Localization extends StatelessWidget {
  const Localization({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Change Language"),
        onTap: () {
          Get.to(LocalizationScreen());
        },
      ),
    );
  }
}
