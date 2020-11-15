import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:uplink_tech_hub/shared/constant.dart';
import 'package:uplink_tech_hub/trainings/section_title.dart';
import 'package:uplink_tech_hub/trainings/training_services/courses_offered/course_data.dart';
import 'package:uplink_tech_hub/trainings/training_services/courses_offered/courses_card.dart';

class CoursesOffered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            SectionTitle(
              color: Color(0xFFFF0000),
              title: "Courses Offerered",
              subTitle: "Rule the world with IT",
            ),
            sizingInformation.deviceScreenType == DeviceScreenType.tablet
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      courses.length,
                      (index) => CourseCard(index: index),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      courses.length,
                      (index) => CourseCard(index: index),
                    ),
                  ),
            sizingInformation.deviceScreenType == DeviceScreenType.tablet
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        courses.length, (index) => CourseCard2(index: index)),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        courses.length, (index) => CourseCard2(index: index)),
                  ),
          ],
        ),
      ),
    );
  }
}
