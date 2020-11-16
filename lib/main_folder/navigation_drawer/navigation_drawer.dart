import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/main_folder/navigation_bar/navigationb_bar_desktop_tablet.dart';
import 'package:uplink_tech_hub/main_folder/navigation_drawer/drawer_item.dart';
import 'package:uplink_tech_hub/main_folder/navigation_drawer/navigation_drawer_header.dart';
import 'package:uplink_tech_hub/main_folder/routing/route_names.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
          child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 16),
          ],
        ),
        child: Column(
          children:[
            
            // NavigationDarwerHeader(),
    
            
            // NavigationBarTabletDesktop(),
            // DrawerItem("Home", Icons.home, HomeRoute),
            // DrawerItem("Services", Icons.laptop, TrainingRoute),
            // DrawerItem("Partners", Icons.handyman, PartnerRoute),
          ]
        ),
      ),
    );
  }
}