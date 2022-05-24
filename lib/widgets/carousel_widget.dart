import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utelerias/VariableGlobales.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1.0,
        autoPlay: true,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
      ),
      items: VariableGlobales.imgList
          .map((item) => Center(
                child: Image.network(
                  item,
                  fit: BoxFit.fill,
                  width: 2000,
                ),
              ))
          .toList(),
    );
  }
}
