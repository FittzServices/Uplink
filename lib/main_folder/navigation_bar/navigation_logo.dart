import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/locator.dart';
import 'package:uplink_tech_hub/main_folder/routing/route_names.dart';
import 'package:uplink_tech_hub/services/navigation_services.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(HomeRoute);
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: Row(
          children: [
            Image.asset('assets/images/uplink2.png'),
          ],
        ),
      ),
    );
  }
}
