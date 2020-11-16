import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:uplink_tech_hub/locator.dart';
import 'package:uplink_tech_hub/main_folder/extentions/hover_extentions.dart';
import 'package:uplink_tech_hub/main_folder/centered_view/centered_view.dart';
import 'package:uplink_tech_hub/main_folder/navigation_bar/navbar_item.dart';
import 'package:uplink_tech_hub/main_folder/navigation_bar/navigation_call_us.dart';
import 'package:uplink_tech_hub/main_folder/navigation_bar/navigation_logo.dart';
import 'package:uplink_tech_hub/main_folder/routing/route_names.dart';
import 'package:uplink_tech_hub/services/navigation_services.dart';

class NavigationBarTabletDesktop extends StatefulWidget {
  final IconData icon;

  const NavigationBarTabletDesktop({Key key, this.icon}) : super(key: key);
  @override
  _NavigationBarTabletDesktopState createState() =>
      _NavigationBarTabletDesktopState();
}

class _NavigationBarTabletDesktopState
    extends State<NavigationBarTabletDesktop> {
  // List _isHovering = [false, false, false];
  String category1 = 'category 1';
  String category2 = 'category 2';
  String category3 = 'category 3';

  List<String> selectedCategory = new List<String>();

  @override
  void initState() {
    //Initialize the  scrollController
    selectedCategory = new List<String>();
    selectedCategory.add(category1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) =>  Container(
        height: 125,
        child: Column(
          children: [
            NavBarCallUs(),
            CenteredView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NavBarLogo(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          locator<NavigationService>().navigateTo(HomeRoute);
                          selectedCategory = new List<String>();
                          selectedCategory.add(category1);
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(
                                fontSize: sizingInformation.deviceScreenType !=
                                      DeviceScreenType.mobile?18:14,
                                // color:Colors.color
                                color: selectedCategory.contains(category1)
                                    ? Colors.deepOrange
                                    : Colors.blue[900],
                              ),
                            ),
                            SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: selectedCategory.contains(category1),
                              child: Container(
                                height: 2,
                                width: 20,
                                color: selectedCategory.contains(category1)
                                    ? Colors.deepOrange
                                    : Colors.blue[900],
                              ),
                            ),
                          ],
                        ),
                      ).showCursorOnHover.moveUpOnHover,
                      SizedBox(width: 25),
                      InkWell(
                        onTap: () {
                          locator<NavigationService>().navigateTo(TrainingRoute);
                          selectedCategory = new List<String>();
                          selectedCategory.add(category2);
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            Text(
                              'Services',
                              style: TextStyle(
                                fontSize: sizingInformation.deviceScreenType !=
                                      DeviceScreenType.mobile?18:14,
                                // color:Colors.color
                                color: selectedCategory.contains(category2)
                                    ? Colors.deepOrange
                                    : Colors.blue[900],
                              ),
                            ),
                            SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: selectedCategory.contains(category2),
                              child: Container(
                                height: 2,
                                width: 20,
                                color: selectedCategory.contains(category2)
                                    ? Colors.deepOrange
                                    : Colors.blue[900],
                              ),
                            ),
                          ],
                        ),
                      ).showCursorOnHover.moveUpOnHover,
                      SizedBox(width: 25),
                      InkWell(
                        onTap: () {
                          locator<NavigationService>().navigateTo(PartnerRoute);
                          selectedCategory = new List<String>();
                          selectedCategory.add(category3);
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            Text(
                              'Partners',
                              style: TextStyle(
                                 fontSize: sizingInformation.deviceScreenType !=
                                      DeviceScreenType.mobile?18:14,
                                // color:Colors.color
                                color: selectedCategory.contains(category3)
                                    ? Colors.deepOrange
                                    : Colors.blue[900],
                              ),
                            ),
                            SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: selectedCategory.contains(category3),
                              child: Container(
                                height: 2,
                                width: 20,
                                color: selectedCategory.contains(category3)
                                    ? Colors.deepOrange
                                    : Colors.blue[900],
                              ),
                            ),
                          ],
                        ),
                      ).showCursorOnHover.moveUpOnHover,
                      // NavBarItem(
                      //   // onHover: (value) {
                      //   //   setState(() {
                      //   //     _isHovering[0] = value;
                      //   //   });
                      //   // },

                      //   title: 'Testing',
                      //   // visible: _isHovering[0],
                      //  onTap: HomeRoute,
                      //  categorySelected:"category1"
                      // ),
                      // NavBarItem(
                      //   // onHover: (value) {
                      //   //   setState(() {
                      //   //     _isHovering[0] = value;
                      //   //   });
                      //   // },

                      //   title: 'Testing2',
                      //   // visible: _isHovering[0],
                      //  onTap: TrainingRoute,
                      //  categorySelected:"category2"
                      // ),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      // NavBarItem(
                      //   onHover: (value) {
                      //     setState(() {
                      //       _isHovering[1] = value;
                      //     });
                      //   },
                      //   title: 'Services',
                      //   visible: _isHovering[1],
                      //   onTap: TrainingRoute,
                      // ),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      // NavBarItem(
                      //   onHover: (value) {
                      //     setState(() {
                      //       _isHovering[2] = value;
                      //     });
                      //   },
                      //   title: 'Partners',
                      //   visible: _isHovering[2],
                      //   onTap: PartnerRoute,
                      // ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
