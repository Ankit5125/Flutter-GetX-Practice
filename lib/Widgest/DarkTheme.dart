import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Darktheme extends StatelessWidget {
  const Darktheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Dark Theme"),
        onTap: () {
          Get.changeTheme(ThemeData.dark());
        },
      ),
    );
  }
}
