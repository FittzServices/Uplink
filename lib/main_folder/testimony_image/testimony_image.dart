import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/main_folder/testimony_image/testimony_carousel.dart';

class TestimonySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/business2.jpeg'),
          fit: BoxFit.cover,
          alignment: AlignmentDirectional.topStart,
        ),
      ),
      child: TestimonyCarousel(),
    );
  }
}
