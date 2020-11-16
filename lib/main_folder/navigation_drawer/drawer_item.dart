import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/locator.dart';
import 'package:uplink_tech_hub/services/navigation_services.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem(this.title, this.icon, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.deepOrange,
          ),
          SizedBox(
            width: 30,
          ),
          _NavBarItem(title, navigationPath)
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const _NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
        Navigator.pop(context);
       
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.blue[900]),
      ),
    );
  }
}
