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
      body: Obx(() {
        final favs = controller.favourite; // <- accessing the RxList inside Obx
        return ListView.builder(
          itemCount: controller.fruits.length,
          itemBuilder: (_, index) {
            final fruit = controller.fruits[index];
            final isFavourite = favs.contains(fruit); // now reactive!

            return Card(
              child: ListTile(
                title: Text(fruit),
                trailing: IconButton(
                  icon: Icon(
                    isFavourite ? Icons.favorite : Icons.favorite_border,
                    color: isFavourite ? Colors.red : null,
                  ),
                  onPressed: () {
                    controller.toggleFavourite(fruit);
                    debugPrint("All Fruits: ${controller.fruits}");
                    debugPrint("Favourites: ${controller.favourite}");
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
