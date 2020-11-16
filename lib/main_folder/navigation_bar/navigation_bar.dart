

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:uplink_tech_hub/main_folder/navigation_bar/navigation_bar_mobile.dart';
import 'package:uplink_tech_hub/main_folder/navigation_bar/navigationb_bar_desktop_tablet.dart';



class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigationBarTabletDesktop();
    // ScreenTypeLayout(
    //   // mobile: NavigationBarMobile(),
    //   NavigationBarTabletDesktop(),
    // );
  }
}
