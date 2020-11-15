import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/main_folder/ErrorPage/error_page.dart';

import 'package:uplink_tech_hub/main_folder/partner_view/partner_view_page.dart';
import 'package:uplink_tech_hub/main_folder/routing/route_names.dart';
import 'package:uplink_tech_hub/main_folder/views/home/home_view.dart';
import 'package:uplink_tech_hub/trainings/training.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case TrainingRoute:
      return _getPageRoute(Trainings(), settings);
    case PartnerRoute:
      return _getPageRoute(PartnerViewPage(), settings);
    default:
        return _getPageRoute(ErrorPage(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            settings: RouteSettings(name: routeName),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
