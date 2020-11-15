import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          ExactAssetImage(
            'assets/images/carousel1.jpeg',
          ),
          ExactAssetImage(
            'assets/images/carousel2.jpeg',
          ),
          ExactAssetImage(
            'assets/images/carousel3.jpeg',
          ),
          ExactAssetImage(
            'assets/images/class2.JPG',
          ),
          ExactAssetImage(
            'assets/images/class.JPG',
          ),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
  }
}