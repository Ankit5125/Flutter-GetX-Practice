import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Controllers/FavouriteListController.dart';

class StateManagementFavourite extends StatelessWidget {
  StateManagementFavourite({super.key});

  FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("State Management (Favourite)")),
      body: ListView.builder(
        itemCount: controller.fruits.length,
        itemBuilder: (_, index) {
          return Card(
            child: ListTile(
              title: Text(controller.fruits[index]),
              trailing: Obx(
                () => Icon(
                  controller.favourite.contains(controller.fruits[index])
                      ? Icons.favorite
                      : null,
                  color: Colors.redAccent,
                ),
              ),
              onTap: () => controller.toggleFavourite(controller.fruits[index]),
            ),
          );
        },
      ),
    );
  }
}
