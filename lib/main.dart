import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/main_folder/layout_template/layout.template.dart';
import 'package:uplink_tech_hub/main_folder/routing/route_names.dart';
import 'package:uplink_tech_hub/main_folder/routing/router.dart';
import 'package:uplink_tech_hub/services/navigation_services.dart';


import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uplinx Digital Institute',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Open Sans',
            ),
      ),

      // builder: (context, child) => LayoutTemplate(
      //   child: child,
      // ),
      builder: (context, child)=>LayoutTemplateView(child: child,),
  
                navigatorKey: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              
      // LayoutTemplate(),

      // navigatorKey: locator<NavigationService>().navigatorKey,
      // onGenerateRoute: generateRoute,
      // initialRoute: HomeRoute,
    );
  }
}
