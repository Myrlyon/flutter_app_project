import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OfficialSlideImage extends StatefulWidget {
  const OfficialSlideImage({super.key});

  @override
  State<OfficialSlideImage> createState() => _OfficialSlideImageState();
}

class _OfficialSlideImageState extends State<OfficialSlideImage> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> imageList = [
      {"id": 1, "image_path": 'assets/productsshow.png'},
      {"id": 2, "image_path": 'assets/productsshow2.png'},
      {"id": 3, "image_path": 'assets/productsshow3.png'}
    ];
    final CarouselController carouselController = CarouselController();
    int currentIndex = 0;

    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              print(currentIndex);
            },
            child: CarouselSlider(
              items: imageList
                  .map(
                    (item) => Image.asset(
                      item['image_path'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
