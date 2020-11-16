import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:uplink_tech_hub/shared/constant.dart';
import 'package:uplink_tech_hub/trainings/training_services/courses_offered/course_data.dart';

class CourseCard extends StatefulWidget {
  const CourseCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: duration,
          margin: sizingInformation.deviceScreenType != DeviceScreenType.mobile
              ? EdgeInsets.symmetric(vertical: kDefaultPadding /1.5)
              : EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          height: sizingInformation.deviceScreenType != DeviceScreenType.mobile
              ? 220
              : 170,
          width: sizingInformation.deviceScreenType != DeviceScreenType.mobile
              ? 220
              : 300,
          decoration: BoxDecoration(
            color: courses[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: duration,
                height: sizingInformation.deviceScreenType != DeviceScreenType.mobile
                    ? 150
                    : 120,
                width: sizingInformation.deviceScreenType != DeviceScreenType.mobile
                    ? 150
                    : 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    if (!isHover)
                      BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.1),
                      ),
                  ],
                ),
                child: Container(
                  height: 130,
                  width: 130,
                  child: Image.asset(
                    courses[widget.index].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                courses[widget.index].title,
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseCard2 extends StatefulWidget {
  const CourseCard2({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _CourseCard2State createState() => _CourseCard2State();
}

class _CourseCard2State extends State<CourseCard2> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: duration,
          margin: sizingInformation.deviceScreenType != DeviceScreenType.mobile
              ? EdgeInsets.symmetric(vertical: kDefaultPadding)
              : EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          height: sizingInformation.deviceScreenType != DeviceScreenType.mobile
              ? 220
              : 170,
          width: sizingInformation.deviceScreenType != DeviceScreenType.mobile
              ? 220
              : 300,
          decoration: BoxDecoration(
            color: courses2[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: duration,
                padding: EdgeInsets.all(kDefaultPadding * 1.5),
                height: sizingInformation.deviceScreenType != DeviceScreenType.mobile
                    ? 150
                    : 120,
                width: sizingInformation.deviceScreenType != DeviceScreenType.mobile
                    ? 150
                    : 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    if (!isHover)
                      BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.1),
                      ),
                  ],
                ),
                child: Container(
                  height: 130,
                  width: 130,
                  child: Image.asset(
                    courses2[widget.index].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                courses2[widget.index].title,
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
