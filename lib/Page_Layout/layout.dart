// import 'package:flutter/material.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:uplink_tech_hub/Page_Layout/route_names.dart';
// import 'package:uplink_tech_hub/Page_Layout/router.dart';

// import 'package:uplink_tech_hub/home/responsive_widget.dart';
// import 'package:uplink_tech_hub/locator.dart';
// import 'package:uplink_tech_hub/services/navigation_services.dart';

// class LayoutTemplate extends StatefulWidget {
//   final ImageProvider image;
//   final Widget child;
//   final double height;

//   LayoutTemplate({Key key, this.image, this.height, this.child})
//       : super(key: key);
//   @override
//   _LayoutTemplateState createState() => _LayoutTemplateState();
// }

// class _LayoutTemplateState extends State<LayoutTemplate> {
//   ScrollController _controller;

//   @override
//   void initState() {
//     //Initialize the  scrollController
//     _controller = ScrollController();
//     super.initState();
//   }

//   void scrollCallBack(DragUpdateDetails dragUpdate) {
//     setState(() {
//       // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
//       _controller.position.moveTo(dragUpdate.globalPosition.dy * 4.5);
//     });
//   }

//   List _isHovering = [
//     false,
//     false,
//     false,
//   ];
//   final _formkey = GlobalKey<FormState>();
//   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   String subject = '';
//   String request = '';
//   String error = '';
//   String navigationPath;
//   double _offset = 0;
//   bool loading = false;
//   ScrollController _scrollController;
//   bool switchPage = false;
//   bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
//     setState(() {
//       _offset = scrollNotification.metrics.pixels;
//     });
//     return true;
//   }

//   void _switchController(onPush) {
//     setState(() {
//       switchPage = onPush;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;

//     return ResponsiveWidget(
//       largeScreen: Scaffold(
//           key: _scaffoldKey,
//           backgroundColor: Colors.white,
//           extendBodyBehindAppBar: true,
//           appBar: PreferredSize(
//             preferredSize: Size.fromHeight(100.0),
//             child: Column(
//               children: [
//                 PreferredSize(
//                   preferredSize: Size(screenSize.width, 1000),
//                   child: Container(
//                     color: Colors.blue[900],
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 50, right: 50),
//                       child: Row(
//                         children: [
//                           Text(
//                             'Call Us: +2348033454976',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           Expanded(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [],
//                             ),
//                           ),
//                           IconButton(
//                             icon: FaIcon(
//                               FontAwesomeIcons.facebook,
//                               color: Colors.white,
//                             ),
//                             onPressed: () {},
//                             iconSize: 15,
//                           ),
//                           SizedBox(
//                             width: screenSize.width / 150,
//                           ),
//                           IconButton(
//                             icon: FaIcon(
//                               FontAwesomeIcons.linkedinIn,
//                               color: Colors.white,
//                             ),
//                             onPressed: () {},
//                             iconSize: 15,
//                           ),
//                           SizedBox(
//                             width: screenSize.width / 150,
//                           ),
//                           IconButton(
//                             icon: FaIcon(
//                               FontAwesomeIcons.skype,
//                               color: Colors.white,
//                             ),
//                             onPressed: () {},
//                             iconSize: 15,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 AppBar(
//                   backgroundColor: Colors.white,
//                   // color: Colors.white,
//                   iconTheme: new IconThemeData(color: Colors.black),
//                   title: Padding(
//                     padding: ResponsiveWidget.isLargeScreen(context)
//                         ? const EdgeInsets.only(
//                             left: 50,
//                             top: 30,
//                             bottom: 30,
//                           )
//                         : const EdgeInsets.only(
//                             left: 10,
//                             top: 30,
//                             bottom: 30,
//                           ),
//                     child: ResponsiveWidget(
//                       largeScreen: Row(
//                         mainAxisAlignment:
//                             ResponsiveWidget.isSmallScreen(context)
//                                 ? MainAxisAlignment.spaceBetween
//                                 : MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(6.0),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   height: 50,
//                                   width: 50,
//                                   decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                       fit: BoxFit.cover,
//                                       image: AssetImage(
//                                           'assets/images/uplink2.png'),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 5,
//                                 ),
//                                 Text(
//                                   'Uplinx Digital Institute',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.black,
//                                       fontSize: 15),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   actions: ResponsiveWidget.isSmallScreen(context)
//                       ? null
//                       : [
//                           Padding(
//                             padding: const EdgeInsets.only(right: 60.0),
//                             child: Row(
//                               children: [
//                                 InkWell(
//                                   onHover: (value) {
//                                     setState(() {
//                                       _isHovering[0] = value;
//                                     });
//                                   },
//                                   onTap: () {
//                                     locator<NavigationService>()
//                                         .navigateTo(HomeRoute);
//                                   },
//                                   child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       Text(
//                                         'Home',
//                                         style: TextStyle(
//                                             color: _isHovering[0]
//                                                 ? Colors.deepOrange
//                                                 : Colors.blue[900],
//                                             fontSize: 15),
//                                       ),
//                                       SizedBox(height: 5),
//                                       // For showing an underline on hover
//                                       Visibility(
//                                         maintainAnimation: true,
//                                         maintainState: true,
//                                         maintainSize: true,
//                                         visible: _isHovering[0],
//                                         child: Container(
//                                           height: 2,
//                                           width: 20,
//                                           color: Colors.deepOrange,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: screenSize.width / 50,
//                                 ),
//                                 InkWell(
//                                   onHover: (value) {
//                                     setState(() {
//                                       _isHovering[1] = value;
//                                     });
//                                   },
//                                   onTap: () {
//                                     locator<NavigationService>()
//                                         .navigateTo(TrainingRoute);
//                                   },
//                                   child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       Text(
//                                         'Trainings',
//                                         style: TextStyle(
//                                             color: _isHovering[1]
//                                                 ? Colors.deepOrange
//                                                 : Colors.blue[900],
//                                             fontSize: 15),
//                                       ),
//                                       SizedBox(height: 5),
//                                       // For showing an underline on hover
//                                       Visibility(
//                                         maintainAnimation: true,
//                                         maintainState: true,
//                                         maintainSize: true,
//                                         visible: _isHovering[1],
//                                         child: Container(
//                                           height: 2,
//                                           width: 20,
//                                           color: Colors.deepOrange,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: screenSize.width / 50,
//                                 ),
//                                 InkWell(
//                                   onHover: (value) {
//                                     setState(() {
//                                       _isHovering[2] = value;
//                                     });
//                                   },
//                                   onTap: () {
//                                     locator<NavigationService>()
//                                         .navigateTo(PartnerRoute);
//                                   },
//                                   child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       Text(
//                                         'Partners',
//                                         style: TextStyle(
//                                             color: _isHovering[2]
//                                                 ? Colors.deepOrange
//                                                 : Colors.blue[900],
//                                             fontSize: 15),
//                                       ),
//                                       SizedBox(height: 5),
//                                       // For showing an underline on hover
//                                       Visibility(
//                                         maintainAnimation: true,
//                                         maintainState: true,
//                                         maintainSize: true,
//                                         visible: _isHovering[2],
//                                         child: Container(
//                                           height: 2,
//                                           width: 20,
//                                           color: Colors.deepOrange,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                 ),
//               ],
//             ),
//           ),
//           // appBar:
//           drawerEnableOpenDragGesture: false,
//           endDrawerEnableOpenDragGesture: false,
//           endDrawer:
//               // data: Theme.of(context).copyWith(
//               //   canvasColor: Colors.transparent,
//               // ),
//               Drawer(
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.85,
//                     child: DrawerHeader(
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage('assets/images/computer.jpeg'),
//                             fit: BoxFit.cover),
//                       ),
//                       child: Row(
//                         children: [
//                           Text(
//                             'Uplink Digital Institute',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.white,
//                                 fontSize: 25),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                     flex: 2,
//                     child: Padding(
//                       padding: const EdgeInsets.all(5.0),
//                       child: ListView(
//                         children: [
//                           ListTile(
//                             leading: Icon(Icons.home, color: Colors.blue),
//                             title: Text(
//                               'Home',
//                               style: TextStyle(
//                                   color: _isHovering[0]
//                                       ? Colors.deepOrange
//                                       : Colors.blue[900],
//                                   fontSize: 15),
//                             ),
//                             onTap: () {
//                               locator<NavigationService>()
//                                   .navigateTo(HomeRoute);
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                           ListTile(
//                             leading: Icon(Icons.person, color: Colors.blue),
//                             title: Text(
//                               'Individual Training',
//                               style: TextStyle(
//                                   color: _isHovering[1]
//                                       ? Colors.deepOrange
//                                       : Colors.blue[900],
//                                   fontSize: 15),
//                             ),
//                             onTap: () {
//                               _switchController(true);
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                           ListTile(
//                             leading: Icon(Icons.people, color: Colors.blue),
//                             title: Text(
//                               'Corporate Training',
//                               style: TextStyle(
//                                   color: _isHovering[1]
//                                       ? Colors.deepOrange
//                                       : Colors.blue[900],
//                                   fontSize: 15),
//                             ),
//                             onTap: () {
//                               _switchController(true);
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                           ListTile(
//                             leading: Icon(Icons.computer, color: Colors.blue),
//                             title: Text(
//                               'Online Training',
//                               style: TextStyle(
//                                   color: _isHovering[1]
//                                       ? Colors.deepOrange
//                                       : Colors.blue[900],
//                                   fontSize: 15),
//                             ),
//                             onTap: () {
//                               _switchController(true);
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                           ListTile(
//                             leading: Icon(Icons.school, color: Colors.blue),
//                             title: Text(
//                               'School Busines Services',
//                               style: TextStyle(
//                                   color: _isHovering[1]
//                                       ? Colors.deepOrange
//                                       : Colors.blue[900],
//                                   fontSize: 15),
//                             ),
//                             onTap: () {
//                               _switchController(true);
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                           ListTile(
//                             leading: Icon(Icons.handyman, color: Colors.blue),
//                             title: Text(
//                               'Trainings',
//                               style: TextStyle(
//                                   color: _isHovering[1]
//                                       ? Colors.deepOrange
//                                       : Colors.blue[900],
//                                   fontSize: 15),
//                             ),
//                             onTap: () {
//                               locator<NavigationService>()
//                                   .navigateTo(TrainingRoute);
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                           ListTile(
//                             leading: Icon(Icons.handyman, color: Colors.blue),
//                             title: Text(
//                               'Partners',
//                               style: TextStyle(
//                                   color: _isHovering[2]
//                                       ? Colors.deepOrange
//                                       : Colors.blue[900],
//                                   fontSize: 15),
//                             ),
//                             onTap: () {
//                               locator<NavigationService>()
//                                   .navigateTo(PartnerRoute);
//                               Navigator.of(context).pop();
//                             },
//                           ),
//                         ],
//                       ),
//                     ))
//               ],
//             ),
//           ),
//           body: Expanded(child: widget.child)),
//     );
//   }
// }

// class DrawTriangle extends CustomPainter {
//   Paint _paint;
//   DrawTriangle() {
//     _paint = Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.fill;
//   }
//   @override
//   void paint(Canvas canvas, Size size) {
//     var path = Path();
//     path.lineTo(size.width, 0.0);
//     path.lineTo(size.width / 2, size.height);
//     path.close();
//     canvas.drawPath(path, _paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
