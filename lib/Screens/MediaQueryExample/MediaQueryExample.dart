import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Media Query Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /** same as
             *  MediaQuery.of(context).size.height
             *  MediaQuery.of(context).size.width
             * */
            Text("Height : ${Get.height}").paddingAll(10),
            Text("Width : ${Get.width}").paddingAll(10),
          ],
        ),
      ),
    );
  }
}
