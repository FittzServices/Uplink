import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:uplink_tech_hub/shared/constant.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Courses",
    "Training",
    "Project",
    "Design",
    "Contact Us",
  ];
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        padding: sizingInformation.deviceScreenType == DeviceScreenType.tablet
            ? EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5)
            : EdgeInsets.symmetric(horizontal: kDefaultPadding),
        constraints: BoxConstraints(maxWidth: 1110),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [kDefaultShadow],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            menuItems.length,
            (index) => buildMenuItem(index),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => ResponsiveBuilder(
        builder: (context, sizingInformation) => InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          onHover: (value) {
            setState(() {
              value ? hoverIndex = index : hoverIndex = selectedIndex;
            });
          },
          child: Container(
            constraints:
                sizingInformation.deviceScreenType == DeviceScreenType.tablet
                    ? BoxConstraints(minWidth: 122)
                    : BoxConstraints(minWidth: 60),
            height: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  menuItems[index],
                  style: TextStyle(
                      fontSize: sizingInformation.deviceScreenType ==
                              DeviceScreenType.tablet
                          ? 20
                          : 15,
                      color: kTextColor),
                ),
                // Hover
                AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom:
                      selectedIndex != index && hoverIndex == index ? -20 : -32,
                  child: Image.asset("assets/images/Hover.png"),
                ),
                // Select
                AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom: selectedIndex == index ? -2 : -32,
                  child: Image.asset("assets/images/Hover.png"),
                ),
              ],
            ),
          ),
        ),
      );
}
