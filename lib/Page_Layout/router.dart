// import 'package:flutter/material.dart';
// import 'package:uplink_tech_hub/Page_Layout/route_names.dart';
// import 'package:uplink_tech_hub/home/home.dart';
// import 'package:uplink_tech_hub/home/partner_page.dart';
// import 'package:uplink_tech_hub/trainings/training.dart';

// Route<dynamic> generateRoute(RouteSettings settings) {
  
//   switch (settings.name) {
  
//     case HomeRoute:
//       return _getPageRoute(Home(), settings);
//     case PartnerRoute:
//       return _getPageRoute(PartnerPage(), settings);
//     case TrainingRoute:
//       return _getPageRoute(Trainings(), settings);
//     default:
//       return MaterialPageRoute(
//           settings: settings,
//           builder: (_) => Scaffold(
//                 body: Center(
                  
//                     child: Padding(
//                       padding: const EdgeInsets.all(50.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                       Text('Oops!',
//                           style: TextStyle(
//                               fontSize: 100,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.blue[900]),),
//                         SizedBox(height: 10,),
//                       Text(
//                         '404 - PAGE NOT FOUND',
//                         style:
//                             TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 10,),
//                       Text(
//                         'Page ${settings.name} you are looking for might have been removed \n or its is temporarily unavailable',
//                         textAlign: TextAlign.center,
//                       ),
//                   ],
//                 ),
//                     )),
//               ));
//   }
// }

// PageRoute _getPageRoute(Widget child, RouteSettings settings) {
//   return _FadeRoute(child: child, routeName: settings.name);
// }

// class _FadeRoute extends PageRouteBuilder {
//   final Widget child;
//   final String routeName;
//   _FadeRoute({this.child, this.routeName})
//       : super(
//           settings: RouteSettings(name: routeName),
//           pageBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) =>
//               child,
//           transitionsBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//             Widget child,
//           ) =>
//               FadeTransition(
//             opacity: animation,
//             child: child,
//           ),
//         );
// }
