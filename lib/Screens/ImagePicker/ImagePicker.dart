import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Controllers/ImagePickerController.dart';

class ImagePickerScreen extends StatelessWidget {
  ImagePickerScreen({super.key});

  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => CircleAvatar(
                radius: 150,
                backgroundImage: controller.imagePath.isNotEmpty
                    ? FileImage(File(controller.imagePath.string))
                    : null,
              ),
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    controller.getImage(false);
                  },
                  child: Text("Pick Image (Galary)"),
                ),
                TextButton(
                  onPressed: () {
                    controller.getImage(true);
                  },
                  child: Text("Pick Image (Camera)"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
