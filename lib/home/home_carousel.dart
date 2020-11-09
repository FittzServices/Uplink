import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Carousel(
      boxFit: BoxFit.cover,
      images: [
        NetworkImage(
          'assets/images/carousel1.jpeg',
        ),
        NetworkImage(
          'assets/images/carousel2.jpeg',
        ),
        NetworkImage(
          'assets/images/carousel3.jpeg',
        ),
        NetworkImage(
          'assets/images/class2.JPG',
        ),
        NetworkImage(
          'assets/images/class.JPG',
        ),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    );
  }
}
