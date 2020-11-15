import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/locator.dart';
import 'package:uplink_tech_hub/main_folder/centered_view/centered_view.dart';
import 'package:uplink_tech_hub/main_folder/navigation_bar/navbar_item.dart';
import 'package:uplink_tech_hub/main_folder/navigation_bar/navigation_call_us.dart';
import 'package:uplink_tech_hub/main_folder/navigation_bar/navigation_logo.dart';
import 'package:uplink_tech_hub/main_folder/routing/route_names.dart';
import 'package:uplink_tech_hub/services/navigation_services.dart';

class NavigationBarTabletDesktop extends StatefulWidget {
  @override
  _NavigationBarTabletDesktopState createState() =>
      _NavigationBarTabletDesktopState();
}

class _NavigationBarTabletDesktopState
    extends State<NavigationBarTabletDesktop> {
  List _isHovering = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    NavBarItem(
                      onHover: (value) {
                        setState(() {
                          _isHovering[0] = value;
                        });
                      },
                      title: 'Home',
                      visible: _isHovering[0],
                      onTap: () {
                        locator<NavigationService>().navigateTo(HomeRoute);
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    NavBarItem(
                      onHover: (value) {
                        setState(() {
                          _isHovering[1] = value;
                        });
                      },
                      title: 'Services',
                      visible: _isHovering[1],
                      onTap: () {
                        locator<NavigationService>().navigateTo(TrainingRoute);
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    NavBarItem(
                      onHover: (value) {
                        setState(() {
                          _isHovering[2] = value;
                        });
                      },
                      title: 'Partners',
                      visible: _isHovering[2],
                      onTap: () {
                        locator<NavigationService>().navigateTo(PartnerRoute);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
