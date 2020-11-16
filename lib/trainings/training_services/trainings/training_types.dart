import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:uplink_tech_hub/shared/constant.dart';
import 'package:uplink_tech_hub/trainings/section_title.dart';
import 'package:uplink_tech_hub/trainings/training_services/trainings/training_type_card.dart';
import 'package:uplink_tech_hub/trainings/training_services/trainings/training_type_data.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) =>SingleChildScrollView(
            child: Container(
              margin: sizingInformation.deviceScreenType != DeviceScreenType.mobile
              ? EdgeInsets.symmetric(vertical: kDefaultPadding)
              : EdgeInsets.symmetric(horizontal: 10.0),
          // margin: EdgeInsets.only(top: kDefaultPadding * 6),
          // width: double.infinity,
          // just for demo
          // height: 600,
          // decoration: BoxDecoration(
          //   color: Color(0xFFF7E8FF).withOpacity(0.3),
          //   image: DecorationImage(
          //     fit: BoxFit.cover,
          //     image: AssetImage("assets/images/recent_work_bg.png"),
          //   ),
          // ),
          child: Column(
            children: [

              SectionTitle(
                title: "Recents Projects",
                subTitle: "Our Strong Arenas",
                color: Color(0xFFFFB100),
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              // SizedBox(
              //   width: 1110,
              //   child: Wrap(
              //     spacing: kDefaultPadding,
              //     runSpacing: kDefaultPadding * 2,
              //     children: List.generate(
              //       recentWorks.length,
              //       (index) => RecentWorkCard(index: index, press: () {}),
              //     ),
              //   ),
              // ),
              // SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}