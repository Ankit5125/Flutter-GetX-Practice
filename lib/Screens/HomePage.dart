import 'package:flutter/material.dart' hide Navigator, MediaQuery;
import 'package:get/get.dart';
import 'package:getx_practice/Screens/LocalizationExample/Localization.dart';
import 'package:getx_practice/Screens/MediaQueryExample/MediaQueryExample.dart';
import 'package:getx_practice/Screens/ScreenTwo/ScreenTwo.dart';
import 'package:getx_practice/Screens/StateManagementScreen/StateManagementScreen.dart';
import 'package:getx_practice/Screens/StateManagementScreen/StateManagementSlider.dart';
import 'package:getx_practice/Screens/StateManagementScreen/StateManagementSwitch.dart';
import 'package:getx_practice/Widgest/ListTileCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Practice")),
      body: Column(
        children: [
          ListTileCard(
            string: "SnackBar",
            onTap: () {
              Get.snackbar(
                "Snackbar",
                "This is an Example of Snackbar using GetX",
              );
            },
          ),
          ListTileCard(
            onTap: () {
              Get.changeTheme(ThemeData.light());
            },
            string: "Light Theme",
          ),
          ListTileCard(
            onTap: () {
              Get.changeTheme(ThemeData.dark());
            },
            string: "Dark Theme",
          ),
          ListTileCard(
            string: "Navigator Example",
            onTap: () {
              Get.to(ScreenTwo());
            },
          ),
          ListTileCard(
            string: "Media Query Example",
            onTap: () {
              Get.to(MediaQueryExample());
            },
          ),
          ListTileCard(
            string: "Change Langauge (NOT WORKING)",
            onTap: () {
              Get.to(LocalizationScreen());
            },
          ),
          ListTileCard(
            string: "State Management Example",
            onTap: () {
              Get.to(StateManagementScreen());
            },
          ),
          ListTileCard(
            string: "State Management (Slider)",
            onTap: () {
              Get.to(StateManagementSlider());
            },
          ),
          ListTileCard(
            string: "State Management (Switch)",
            onTap: () {
              Get.to(StateManagementSwitch());
            },
          ),
        ],
      ),
    );
  }
}
