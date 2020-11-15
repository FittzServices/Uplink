import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:uplink_tech_hub/Page_Layout/route_names.dart';
import 'package:uplink_tech_hub/locator.dart';
import 'package:uplink_tech_hub/main_folder/navigation_bar/navigation_bar.dart';
import 'package:uplink_tech_hub/main_folder/navigation_drawer/navigation_drawer.dart';
import 'package:uplink_tech_hub/main_folder/routing/route_names.dart';
import 'package:uplink_tech_hub/main_folder/routing/router.dart';
import 'package:uplink_tech_hub/services/navigation_services.dart';

class LayoutTemplateView extends StatelessWidget {
  final Widget child;

  const LayoutTemplateView({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
