import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/shared/constant.dart';
import 'package:uplink_tech_hub/trainings/training_services/contact_us/training_contact_us.dart';
import 'package:uplink_tech_hub/trainings/training_services/courses_offered/courses.dart';
import 'package:uplink_tech_hub/trainings/trainings_top_section.dart';

class Trainings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
              child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            CoursesOffered(),
             SizedBox(height: kDefaultPadding),
            ContactSection()
          ],
        ),
      ),
    );
  }
}