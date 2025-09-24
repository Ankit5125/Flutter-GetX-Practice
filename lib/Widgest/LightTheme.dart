import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LightTheme extends StatelessWidget {
  const LightTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Light Theme"),
        onTap: () {
          Get.changeTheme(ThemeData.light());
        },
      ),
    );
  }
}
