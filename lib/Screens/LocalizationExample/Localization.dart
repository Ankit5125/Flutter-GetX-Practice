import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationScreen extends StatelessWidget {
  const LocalizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Localization Screen")),
      body: Center(
        child: Column(
          children: [
            ListTile(title: Text("message".tr)),
            ListTile(title: Text("name".tr)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('hi', "IND"));
                  },
                  child: Text("Hindi"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
