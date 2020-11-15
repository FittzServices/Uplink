import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/main_folder/blur_image/blur_image_address_mobile.dart';
import 'package:uplink_tech_hub/main_folder/card_view/card_view_mobile.dart';
import 'package:uplink_tech_hub/main_folder/carousel_images/carousel_images.dart';

import 'package:uplink_tech_hub/main_folder/course_details/course_details.dart';
import 'package:uplink_tech_hub/main_folder/course_details/course_images_details.dart';

import 'package:uplink_tech_hub/main_folder/footer/footer_mobile.dart';
import 'package:uplink_tech_hub/main_folder/mid_question/section_view_mobile.dart';

import 'package:uplink_tech_hub/main_folder/testimony_image/testimony_image_mobile.dart';
import 'package:uplink_tech_hub/main_folder/views/contact_us/contact_us.dart';

class HomeContentMobile extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselImages(),
              ContactUs(),
              CardViewMobile(),
              Container(
                color: Colors.blue[900],
                height: 900,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: IndividualTrainingImage(),
                    ),
                    Center(child: IndividualTraining()),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 900,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: CorporateTrainingImage(),
                    ),
                    Center(child: CoorporateTrainings()),
                  ],
                ),
              ),
              Container(
                color: Colors.blue[900],
                height: 900,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: OnlineTrainingImage(),
                    ),
                    Center(child: OnlineTrainings()),
                  ],
                ),
              ),
              TestimonySectionMobile(),
              SectionViewMobile(),
              BlurImageAddressMobile(),
              FooterSectionMobile(),
            ],
          ),
        ),
      ],
    );
  }
}
