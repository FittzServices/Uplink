import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/main_folder/extentions/hover_extentions.dart';
class IndividualTrainingImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 400,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: DecorationImage(
            image: ExactAssetImage('assets/images/carousel2.jpeg'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      ).showCursorOnHover.moveUpOnHover;
  }
}

class CorporateTrainingImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: DecorationImage(
            image: ExactAssetImage('assets/images/class.JPG'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.grey[300],
            width: 10.0,
          ),
        ),
      ).showCursorOnHover.moveUpOnHover;
  }
}
class OnlineTrainingImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: 350,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: DecorationImage(
            image: ExactAssetImage('assets/images/online.jpeg'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      ).showCursorOnHover.moveUpOnHover;
  }
}



