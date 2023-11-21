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
      "Space Official Store",
      "SIZE : M / L / XL IDR : 200000 COLOUR : White Material : Cotton Combed 24s - 180gsm - premium soft and handfeel Note : 1.Pengiriman setiap hari kerja Senin-Sabtu jam 5 sore , Orderan sebelum jam 3 siang akan diproses dihari yang sama. 2.Resi dapat dicek setelah dikirim oleh pihak ekspedisi. 3.Tidak bisa melakukan penukaran barang, karena produk sesuai deskripsi & size chart tersedia ( kecuali ada kesalahan pengiriman ) 4.Mohon isi Atas nama penerima & alamat / no tlp yang lengkap , apabila ada kesalahan sewaktu pengiriman , seller tidak bertanggung jawab.",
      88000,
      5,
      "https://images.tokopedia.net/img/cache/900/hDjmkQ/2023/7/25/858e6933-c6a8-4c19-8a62-a4269bc3c14f.jpg");

  ItemModel ItemModel5 = ItemModel(
      "Celana Chino Pria",
      "Fashion",
      "Eight NineTeen Official",
      "Bahan celana : KATUN TWILL (STRETCH/KARET/ELASTIS), Tersedia warna : Hitam, Dark Khaki, Cream, Abu Tua , Size Tersedia : 28,30,32,34,36,38,40,42 , Jika anda sedang mencari celana yang pas digunakan untuk berbagai acara, celana chino merupakan pilihan yang sangat tepat. Model celana chino yang sedang trend belakangan ini karena modelnya yang casual dan trendy, sehingga membuat celana chino cocok digunakan oleh semua golongan dan segala acara.",
      149999,
      4,
      "https://images.tokopedia.net/img/cache/700/VqbcmM/2022/12/6/bf07c6d9-022b-48a8-ad9d-49c1f5cdf79f.jpg");

  ItemModel ItemModel6 = ItemModel(
      "Hot Wheels Fast & Furious 5 Car",
      "Toy",
      "Hot Wheels Flagship",
      "Hot Wheels Premium Fast & Furious dengan isi 5 car Packs yang berkualitas dengan badan mobil yang terbuat dari bahan metal. Terdiri dari 5 mobil dengan model yang populer dan di kemas secara epik di dalam box yang elegan :a) '66 Chevy Novab) '65 Corvette Stingray Coupec) Hummer H1d) '61 Impalae) '69 Ford Mustanf Boss 302 Hot Wheels Premium Fast & Furious ini terbuat dari Thailand dengan roda dari karet dan bodi mobil dari bahan metal. Cocok sebagai hadiah untuk kolektor Hot Wheels di segala usia.",
      806900,
      5,
      "https://images.tokopedia.net/img/cache/700/VqbcmM/2023/5/2/c72bbdd4-f3e0-43e1-b89e-659303e94efd.jpg");

  ItemModel ItemModel7 = ItemModel(
      "Luke Skywalker Lightsaber",
      "Toy",
      "Jawa's Depot",
      "Luke Skywalker / Rey Graflex Lightsaber dari film Star Wars episode 7: The Force Awakens, Kondisi Baru, ready stock tinggal kirim selama masih ada di listing Tokopedia, High-end = sama dengan yg dijual di Korbanth US atau TSA UK. Sangat berbeda dengan replika buatan LGT/TXQ yang lebih murah. Beda kualitas material, akurasi detailnya, dan instalasinya, Hilt: 89 Sabers Soundboard: Proffieboard 2.2 neopixel Speaker: 24mm 8ohm 2W",
      7000000,
      5,
      "https://images.tokopedia.net/img/cache/250-square/VqbcmM/2023/7/18/ee8040f0-63c8-461e-9bf4-e371cbb575b6.jpg");

  ItemModel ItemModel8 = ItemModel(
      "Celana Pria Kain Stretch",
      "Fashion",
      "Disai888",
      "> Ukuran M: - Panjang celana: 86 cm - Lingkar pinggang: 67 cm - Lingkar panggul: 104 cm > ukuran L: - Panjang celana: 88 cm - Lingkar pinggang: 70 cm - Lingkar panggul: 108 cm > Ukuran XL: - Panjang celana: 90 cm- Lingkar pinggang: 73 cm - Lingkar panggul: 112 cm > Ukuran 2XL: - Panjang celana: 92 cm - Lingkar pinggang: 76 cm - Lingkar panggul: 116 cm > Ukuran 3XL: - Panjang celana: 94 cm - Lingkar pinggang: 79 cm - Lingkar panggul: 120 cm > Ukuran 4XL: - Panjang celana: 96 cm - Lingkar pinggang: 82 cm - Lingkar panggul: 124 cm",
      82900,
      4,
      "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/9/4/1d4c5e4a-79d5-4500-abf5-356e46413606.jpg");

  ItemModel ItemModel9 = ItemModel(
      "EMOLINE Celana Chino Pria",
      "Fashion",
      "EMOLINE",
      "Emoline - Celana Chino Panjang Karet Premium - Celana Panjang Pria Cotton Stretch Bahan : Katun Stretch Premium warna : Hitam, Abu, Coklat Milo, Broken White (Cream Putih) Model / Cutting : Slim Fit Ukuran : 29-38 Warna :  - Hitam  - Abu  - Cream INFO MODEL : TB 185CM , BB 76CM Pakai ukuran 31 Panjang Celana +/- 102 cm 2 Saku Bobok Belakang 2 Saku Samping Kiri dan Kanan",
      162000,
      4,
      "https://images.tokopedia.net/img/cache/700/VqbcmM/2023/7/29/7ddcc96e-25b3-446d-8ff6-b811a05400da.jpg");

  ItemModel ItemModel10 = ItemModel(
      "Nintendo Switch Lite-Dialga Edition",
      "Console",
      "PS Enterprise Official",
      "Nintendo Switch™ Lite – Dialga & Palkia Edition Sistem Nintendo SwitchTM Lite ini adalah yang pertama menampilkan bodi abu-abu metalik dengan tombol hitam. Bagian belakang menampilkan seni garis mencolok dari Legendary Pokémon Dialgia dan Palkia dari game PokémonTM Brilliant Diamond dan PokémonTM Shining Pearl dalam finishing berwarna perak dan emas.  Edisi Nintendo Switch Lite Dialga dan Palkia Termasuk: sistem Nintendo Switch Lite dan adaptor AC Nintendo Switch",
      3375000,
      5,
      "https://images.tokopedia.net/img/cache/700/VqbcmM/2021/8/25/df590af4-ef43-4131-9236-86ade5db4154.jpg");

  ItemModel ItemModel11 = ItemModel(
      "PS5 Playstation 5 console",
      "Console",
      "PS Enterprise Official",
      "Sony Playstation 5 console Pilih variant :  * Sony Indo : BNIB segel Garansi resmi Sony Indonesia 2 tahun  * Sony Inter : BNIB garansi toko 7 hari ( disarankan menggunakan proteksi produk elektronik dari tokopedia agar bisa mendapatkan garansi 1 tahun) Yang didapat dalam box :  - 1x Console PS5  - 1x USB type C (Charging Stik)  - 1x Hdmi  - 1x Stik  - 1x Kabel Power  - 1x Manual Book  - 1x wadah buat nidurin ps",
      3375000,
      5,
      "https://images.tokopedia.net/img/cache/700/VqbcmM/2023/9/28/61569ada-f62c-45ec-9157-263fe3f2863a.jpg");

  ItemModel ItemModel12 = ItemModel(
      "PS4 PLAYSTATION 4 PRO",
      "Console",
      "IWAN FEBRIANTO",
      "JAMIN HARGA TERMURAH!!! DAN BERGARANSI 1 TAHUN!!! DAN BONUS 500 GAMES BARANG SEBELUM DI KIRIM KITA UDAH UJI COBA DENGAN NORMAL SEMUA BARU KIRIM PAKINGAN KITA JAMIN AMAN SAMPAI TUJUHAN HANYA KAMI ***BINTANG GAMES*** PILIH VARIAN KKA MAU PLAYSTATION 4 / PS4 Fat , PS4 Slim , PS4 Pro 100% TIDAK BARANG REFURBISH! 100% ORIGINAL BERGARANSI! 100% TIDAK CONSOLE PS4 HEN/PALSU! 100% BUKAN AKUN SHARE BISA ONLINE BISA MINTA ID PASSWORD Hanya belanja di kami mendapatkan banyak bonus. Bonus ratusan Games Original (TERGANTUNG VARIAN YANG ANDA PILIH) FULLSET CONDITION IN THE BOX: - 1/2 Dualshock Original Pabrik - 1 PlayStation 4 FAT , SLIM , PRO - 1 Kabel HDMI - 1 Kable Power - 1 kabel cassan stik duss ps4",
      3375000,
      5,
      "https://images.tokopedia.net/img/cache/700/VqbcmM/2023/10/17/4d567c3a-116b-4132-ba8a-b0e91a130094.jpg");

  ItemModel ItemModel13 = ItemModel(
      "HOOLIGANS Bag Gullit Black",
      "BackPack",
      "HOOLIGANS",
      "Daily Backpack Black ini menggunakan bahan D polyester dengan kompartemen yang luas, Style yang ramping dan minimalis pas untuk meringkas keperluan sekolah, ngampus atau traveling kamu. Bahan : Cordura Nylon Ukuran : Panjang = 30 Lebar = 10 Tinggi = 40 Materials : - D Polyester - Label bordir HLGN+ - Waterproof Zipper - Cover with quality zippers - 1 Kompartemen Utama ( slot laptop fit sampai dengan ukuran 15 Inch ) - 1 Kompartemen Saku depan dengan penutup retsleting - 2 Kompartemen saku samping kiri dan kanan ( botol minum dan sebagainya ) - Perbedaan Warna produk dengan display pada settingan layar monitor anda dapat terjadi.",
      99000,
      5,
      "https://images.tokopedia.net/img/cache/700/hDjmkQ/2023/2/6/f7d9ae79-e87c-4b14-8112-70d1a71a3856.jpg");

  ItemModel ItemModel14 = ItemModel(
      "Tas Ransel Backpack Pria Traveling",
      "BackPack",
      "Hikemore Jakarta",
      "Tas Ransel Hikemore Warden ✅Tas mempunyai 1 kompertement utama dengan penutup tas dan tali serut ✅Ada 1 kompartement dibagian depan tas tanpa zipper ✅Mempunyai 1 kompartement kecil dibagian atas penutup tas ✅Desain penutup tas dengan pengunci buckle ✅Ada slot laptop dengan busa, maksimal muat laptop 15 inch ✅Mempunyai slot Organizer ATK, power bank dsb ✅Terdapat Keychain untuk menggantung kunci di bagian dalam tas ✅Quick access menggunakan zipper dibagian belakang tas ✅Dua kantong samping, untuk menyimpan botol minum ✅Dilengkapi tali webbing dibagian samping dan dibagian bawah tas, bisa digunakan untuk menaruh tenda, matras, Dsb. ✅Menggunakan zipper YKK ✅Tas sudah include rain cover ✅Dimensi 44cm x 32cm x 18cm ✅Kapasitas 25 L ✅Bagian punggung dilapisi oleh busa tebal sehingga menambah kenyamanan saat dipakai ✅Logo Hikemore menggunakan sablon ✅Cocok Digunakan Untuk Berbagai Kegiatan Yang Membawa Banyak Barang, Seperti Untuk Traveling, Kerja, Sekolah, Dsb ✅Setiap Produk Hikemore Diproduksi Dengan Keunggulan Akan Durability, Fungsional, serta Fashionable ✅Original Produk",
      299000,
      5,
      "https://images.tokopedia.net/img/cache/700/VqbcmM/2023/7/3/a05d2821-1f76-4459-9e56-bfc272991298.jpg");

  ItemModel ItemMode15 = ItemModel(
      "Techdoo Tas Selempang Pria",
      "Backpack",
      "Techdoo",
      "Tas Selempang Pria Keren Multifungsi Waistbag Sport USB Charge Fashion Slempang Waterproof TS713 , Bisa dijadiin Ransel dan Selempang Fungsi : Tas Anti Air & Anti Maling Model : Waist Bag Casual Pembukaan : Ritsleting Bahan : Nilon Ukuran : 18cm x 11cm x 31cm Warna : Hitam, Abu, Biru & Gold Tas Pria Tas Selempang Multifungsi Waistbag Fashion Premium Quality Crossbody Bags Men - Tas Selempang 100% High Quality Tas Model selempang versi Crossbody Sling Bags adalah tas exclusive khusus traveler dengan model selempang agar nyaman dalam berpergian tanpa harus takut oleh kemungkinan pencurian dan ketika hujan.",
      99000,
      5,
      "https://images.tokopedia.net/img/cache/700/VqbcmM/2021/10/16/1dd23231-6733-4d01-af94-b295fd800f80.jpg");

  ItemShow.add(ItemModel1);
  ItemShow.add(ItemModel2);
  ItemShow.add(ItemModel4);
  ItemShow.add(ItemModel5);
  ItemShow.add(ItemModel6);
  ItemShow.add(ItemModel7);
  ItemShow.add(ItemModel8);
  ItemShow.add(ItemModel9);
  ItemShow.add(ItemModel10);
  ItemShow.add(ItemModel11);
  ItemShow.add(ItemModel12);
  ItemShow.add(ItemModel13);
  ItemShow.add(ItemModel14);
  ItemShow.add(ItemMode15);
}
