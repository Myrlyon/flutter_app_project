class ItemModel {
  late String name;
  late String seller;
  late String category;
  late String description;
  late int price;
  late int rating;
  late String image;

  ItemModel(String name, String category, String seller, String description,
      int price, int rating, String image) {
    this.name = name;
    this.category = category;
    this.seller = seller;
    this.description = description;
    this.price = price;
    this.rating = rating;
    this.image = image;
  }
}

void ItemModelMain(List<ItemModel> ItemShow) {
  ItemModel ItemModel1 = ItemModel(
      "Insurgent Club - Hoodie Basic Boxy Washed",
      "Fashion",
      "Insurgent Club",
      "Boxy Hoodie are a chic way to show off your sense of fashion without being too revealing. These Hoodie are cut in a box shape at the torso, giving the upper body a square shape that goes great with all kinds of outfits and body types. Our material we used has better heat retention and comfortable when used in all activities. With a thicker material thickness than other materials, the material will last much longer and continue to maintain its color after several times washed. For the best quality, we used Plastisol Ink for printing details. This ink are the best choice because it has the best quality screen printing colors, the colors look bright and not dull. 100% cotton Heavyweight 330gsm 16s",
      399999,
      5,
      "https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/7/25/858e6933-c6a8-4c19-8a62-a4269bc3c14f.jpg");
  ItemModel ItemModel2 = ItemModel(
      "Insurgent Club - Hoodie Basic Boxy Washed",
      "Fashion",
      "Insurgent Club",
      "Boxy Hoodie are a chic way to show off your sense of fashion without being too revealing. These Hoodie are cut in a box shape at the torso, giving the upper body a square shape that goes great with all kinds of outfits and body types. Our material we used has better heat retention and comfortable when used in all activities. With a thicker material thickness than other materials, the material will last much longer and continue to maintain its color after several times washed. For the best quality, we used Plastisol Ink for printing details. This ink are the best choice because it has the best quality screen printing colors, the colors look bright and not dull. 100% cotton Heavyweight 330gsm 16s",
      399999,
      5,
      "https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/7/25/858e6933-c6a8-4c19-8a62-a4269bc3c14f.jpg");

  ItemShow.add(ItemModel1);
  ItemShow.add(ItemModel2);
}
