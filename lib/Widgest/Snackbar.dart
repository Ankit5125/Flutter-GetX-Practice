import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Snackbar"),
        onTap: () {
          Get.snackbar(
            "Hey! from GetX",
            "this is an example of Snackbar in GetX",
          );
        },
      ),
    );
  }
}
