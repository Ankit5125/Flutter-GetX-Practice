import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Screens/MediaQueryExample/MediaQueryExample.dart';

class MediaQuery extends StatelessWidget {
  const MediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Media Query Example"),
        onTap: () {
          Get.to(MediaQueryExample());
        },
      ),
    );
  }
}
