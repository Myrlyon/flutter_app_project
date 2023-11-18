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
      "Hoodie Basic Boxy Washed",
      "Fashion",
      "Insurgent Club",
      "Boxy Hoodie are a chic way to show off your sense of fashion without being too revealing. These Hoodie are cut in a box shape at the torso, giving the upper body a square shape that goes great with all kinds of outfits and body types. Our material we used has better heat retention and comfortable when used in all activities. With a thicker material thickness than other materials, the material will last much longer and continue to maintain its color after several times washed. For the best quality, we used Plastisol Ink for printing details. This ink are the best choice because it has the best quality screen printing colors, the colors look bright and not dull. 100% cotton Heavyweight 330gsm 16s",
      399999,
      5,
      "https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/7/25/858e6933-c6a8-4c19-8a62-a4269bc3c14f.jpg");
  ItemModel ItemModel2 = ItemModel(
      "Varydan Sweater Crewneck Antique",
      "Fashion",
      "Varydan Offical",
      "VARYDAN CREWNECK SWEATER ▪️ Material : Fleece Cotton / Gramasi 280 ▪️ UNISEX (BISA PRIA DAN WANITA ) ▪️ Dapat digunakan dalam berbagai acara dan kegiatan SIZE CHART  M  52 Cm x 66 Cm x 60 Cm - Maksimal tinggi 163 Cm L : 60 Cm x 71 Cm x 64 Cm - Maksimal tinggi 185 Cm XL : 56 Cm x 68 Cm x 62 Cm - Maksimal tinggi 172 Cm",
      135000,
      5,
      "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2023/8/2/2170f1e9-ba32-4731-b616-42a73c3043aa.jpg.webp?ect=4g");
  ItemModel ItemModel4 = ItemModel(
      "Kaos Oversize Colourspace",
      "Fashion",
      "colourspaceofficialstore",
      "SIZE : M / L / XL IDR : 200000 COLOUR : White Material : Cotton Combed 24s - 180gsm - premium soft and handfeel Note : 1.Pengiriman setiap hari kerja Senin-Sabtu jam 5 sore , Orderan sebelum jam 3 siang akan diproses dihari yang sama. 2.Resi dapat dicek setelah dikirim oleh pihak ekspedisi. 3.Tidak bisa melakukan penukaran barang, karena produk sesuai deskripsi & size chart tersedia ( kecuali ada kesalahan pengiriman ) 4.Mohon isi Atas nama penerima & alamat / no tlp yang lengkap , apabila ada kesalahan sewaktu pengiriman , seller tidak bertanggung jawab.",
      88000,
      5,
      "https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/7/25/858e6933-c6a8-4c19-8a62-a4269bc3c14f.jpg");
  ItemModel ItemModel5 = ItemModel(
      "Hoodie Basic Boxy Washed",
      "Fashion",
      "Insurgent Club",
      "Boxy Hoodie are a chic way to show off your sense of fashion without being too revealing. These Hoodie are cut in a box shape at the torso, giving the upper body a square shape that goes great with all kinds of outfits and body types. Our material we used has better heat retention and comfortable when used in all activities. With a thicker material thickness than other materials, the material will last much longer and continue to maintain its color after several times washed. For the best quality, we used Plastisol Ink for printing details. This ink are the best choice because it has the best quality screen printing colors, the colors look bright and not dull. 100% cotton Heavyweight 330gsm 16s",
      399999,
      5,
      "https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/7/25/858e6933-c6a8-4c19-8a62-a4269bc3c14f.jpg");
  ItemModel ItemModel6 = ItemModel(
      "Hoodie Basic Boxy Washed",
      "Fashion",
      "Insurgent Club",
      "Boxy Hoodie are a chic way to show off your sense of fashion without being too revealing. These Hoodie are cut in a box shape at the torso, giving the upper body a square shape that goes great with all kinds of outfits and body types. Our material we used has better heat retention and comfortable when used in all activities. With a thicker material thickness than other materials, the material will last much longer and continue to maintain its color after several times washed. For the best quality, we used Plastisol Ink for printing details. This ink are the best choice because it has the best quality screen printing colors, the colors look bright and not dull. 100% cotton Heavyweight 330gsm 16s",
      399999,
      5,
      "https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/7/25/858e6933-c6a8-4c19-8a62-a4269bc3c14f.jpg");

  ItemShow.add(ItemModel1);
  ItemShow.add(ItemModel2);
  ItemShow.add(ItemModel4);
  ItemShow.add(ItemModel5);
  ItemShow.add(ItemModel6);
}
