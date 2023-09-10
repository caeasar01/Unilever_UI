import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

import '../../const/image_string.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height * 0.3,
      child: CarouselSlider.builder(
                scrollDirection: Axis.horizontal,
                slideIndicator: CircularSlideIndicator(indicatorRadius: 4),
                enableAutoSlider: true,
                unlimitedMode: true,
                autoSliderDelay:const Duration(seconds: 5),
                slideBuilder: (index) =>Container(
                  margin: const EdgeInsets.only(left: 10,right:10, bottom: 25 ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(image: AssetImage(logoImage),fit: BoxFit.cover)
                    ),
                  ),
              
                itemCount: 5),
    );
  }
}