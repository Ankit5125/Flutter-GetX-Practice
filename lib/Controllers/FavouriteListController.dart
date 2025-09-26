import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruits = [
    'Mango',
    'Orange',
    'Banana',
    'Grapes',
    'Pineapple',
    'Kiwi',
  ].obs;

  RxList<String> favourite = <String>[].obs;

  void toggleFavourite(String fruit) {
    if (favourite.contains(fruit)) {
      favourite.remove(fruit);
    } else {
      favourite.add(fruit);
    }
    print("Updated favourites: $favourite");
  }
}
