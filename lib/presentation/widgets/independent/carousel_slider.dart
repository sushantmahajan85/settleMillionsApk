
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2, right: 2),
      child: Container(
          height: 250.0,
          width: double.infinity,
          child: Carousel(
            images: [
              Image.asset(
                'assets/images/carousel/promotion_one.png',
                height: double.infinity,
                width: double.infinity,
              ),
             Image.asset(
                'assets/images/carousel/promotion_two.png',
                height: double.infinity,
                width: double.infinity,
              ),
             Image.asset(
                'assets/images/carousel/promotion_three.png',
                height: double.infinity,
                width: double.infinity,
              ),
            ],
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.purple,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.black54.withOpacity(0.2),
            borderRadius: true,
            radius: Radius.circular(20),
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
          )),
    );
  }
}