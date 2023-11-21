import 'package:flutter_app_project/apps/model/ItemModel.dart';

class Wishlist {
  List<ItemModel> items = [];

  // Add item to wishlist
  void addToWishlist(ItemModel item) {
    if (!items.contains(item)) {
      items.add(item);
      print('${item.name} added to the wishlist.');
    } else {
      print('${item.name} is already in the wishlist.');
    }
  }

  // Remove item from wishlist
  void removeFromWishlist(ItemModel item) {
    if (items.contains(item)) {
      items.remove(item);
      print('${item.name} removed from the wishlist.');
    } else {
      print('${item.name} is not in the wishlist.');
    }
  }

  // Display wishlist
  void displayWishlist() {
    if (items.isEmpty) {
      print('Wishlist is empty.');
    } else {
      print('Wishlist:');
      for (var item in items) {
        print('- ${item.name}');
      }
    }
  }
}
