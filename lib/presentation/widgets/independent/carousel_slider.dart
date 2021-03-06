import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 225.0,
          width: double.infinity,
          child: Carousel(
            images: [
              Image.asset(
                'assets/images/carousel/promotion_one.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
             Image.asset(
                'assets/images/carousel/promotion_two.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
             Image.asset(
                'assets/images/carousel/promotion_three.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ],
            dotSize: 0,
            dotBgColor: Colors.black54.withOpacity(0),
            showIndicator: false,
            borderRadius: true,
            radius: Radius.circular(20),
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
          ));
  }
}