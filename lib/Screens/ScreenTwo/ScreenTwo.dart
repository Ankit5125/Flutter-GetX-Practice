import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen Two")),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text("Go Back"),
        ),
      ),
    );
  }
}
