import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:uplink_tech_hub/home/mouse_action.dart';
import 'package:uplink_tech_hub/home/responsive_widget.dart';

class PartnerPage extends StatefulWidget {
  @override
  _PartnerPageState createState() => _PartnerPageState();
}

class _PartnerPageState extends State<PartnerPage>
    with SingleTickerProviderStateMixin {
  double offset = 0;
  double _offset=0;
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _controller.position.moveTo(dragUpdate.globalPosition.dy);
    });
  }

  AnimationController animationController;
  Animation<Color> animationColor;


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final nameStyle = ResponsiveWidget.isLargeScreen(context)
        ? Theme.of(context).textTheme.headline2
        : Theme.of(context).textTheme.headline4;
    final descriptionStyle = ResponsiveWidget.isLargeScreen(context)
        ? Theme.of(context).textTheme.headline4
        : Theme.of(context).textTheme.headline6;
    return Listener(
      onPointerSignal: (PointerSignalEvent event){
        if(event is PointerScrollEvent){
          setState(() {
            _offset =event.position.dy;
          });
          print('this is pointer scrooll $event');
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(top:90.0),
        child: ResponsiveWidget(
          largeScreen: Material(
            child: NotificationListener<ScrollNotification>(
              // When user scrolls, this will trigger onNotification.
              // updateOffsetAccordingToScroll updates the offset
              onNotification: updateOffsetAccordingToScroll,
              // ScrollConfiguration sets the scroll glow behaviour
              child: ScrollConfiguration(
                behavior: NoScrollGlow(),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      // The hero image will be pushed up once user scrolls up
                      // That is why it is multiplied negatively.
                      top: -.25 * offset,
                      child: Container(
                        height: height / 1.5,
                        width: width,
                        decoration: new BoxDecoration(
                          // color: const Color(0xff7c94b6),
                          image: new DecorationImage(
                              image: new ExactAssetImage(
                                  'assets/images/business3.jpeg'),
                              // colorFilter: new ColorFilter.mode(
                              //     Colors.black.withOpacity(0.8), BlendMode.dstATop),
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                      // FadeInImage.memoryNetwork(
                      //   // From the transparent_image package
                      //   placeholder: kTransparentImage,
                      //   image: ('assets/images/business3.jpeg'),
                      //   height: height / 1.5,
                      //   width: width,
                      //   fit: BoxFit.fitWidth,
                      // ),
                    ),
                    Positioned(
                      top: ResponsiveWidget.isLargeScreen(context)
                          ? -.25 * offset
                          : -.60 * offset,
                      child: SizedBox(
                        height: height,
                        width: width,
                        child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Global Partnership Institute',
                                  textAlign: TextAlign.center,
                                  style: nameStyle.copyWith(
                                    color: Colors.white,
                                    // backgroundColor: Colors.black.withOpacity(0.2),
                                  ),
                                ),
                                SizedBox(
                                    height: ResponsiveWidget.isLargeScreen(context)
                                        ? 20
                                        : 5),
                                Text(
                                  'Proving learning, solutions, is easy',
                                  style: descriptionStyle.copyWith(
                                    color: Colors.white,
                                    // backgroundColor: Colors.black.withOpacity(0.2),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    SingleChildScrollView(
                      controller: _controller,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: height / 1.5),
                          Container(
                              height: height,
                              width: width,
                              color: Colors.white,
                              child: Padding(
                                padding: ResponsiveWidget.isLargeScreen(context)
                                    ? const EdgeInsets.all(20.0)
                                    : const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    ResponsiveWidget.isLargeScreen(context)
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Card(
                                                child: Container(
                                                  height: 350,
                                                  width: 350,
                                                  color: Colors.white,
                                                  child: Stack(children: [
                                                    Container(
                                                      height: 250,
                                                      width: 350,
                                                      // padding: EdgeInsets.all(16),
                                                      decoration: new BoxDecoration(
                                                        image: new DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/images/solar.jpeg'),
                                                          fit: BoxFit.fitWidth,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(15.0),
                                                            child: Text(
                                                              'SOLAR POWER',
                                                              style: TextStyle(
                                                                fontSize: 24,
                                                                color: Colors.white,
                                                                fontWeight:
                                                                    FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 0,
                                                      child: Container(
                                                        color: Colors.blue[900],
                                                        width: 350,
                                                        height: 120,
                                                        padding: EdgeInsets.all(16),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            // Container(
                                                            //   height: 1,
                                                            //   width: double.infinity,
                                                            //   color: Colors.blue
                                                            //       .withAlpha(50),
                                                            //   margin:
                                                            //       EdgeInsets.symmetric(
                                                            //           vertical: 12),
                                                            // ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(15.0),
                                                              child: Text(
                                                                'We design and deploy over 200kva solar power system and solar mini-grid and facilitate collaborations and partnerships for business growth.',
                                                                style: TextStyle(
                                                                  fontSize: 11,
                                                                  color:
                                                                      Colors.white,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              Card(
                                                child: Container(
                                                  height: 350,
                                                  width: 350,
                                                  color: Colors.white,
                                                  child: Stack(children: [
                                                    Container(
                                                      height: 250,
                                                      width: 350,
                                                      // padding: EdgeInsets.all(16),
                                                      decoration: new BoxDecoration(
                                                        image: new DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/images/cyber.jpeg'),
                                                          fit: BoxFit.fitWidth,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(15.0),
                                                            child: Text(
                                                              'CYBER SECURITY',
                                                              style: TextStyle(
                                                                fontSize: 24,
                                                                color: Colors.white,
                                                                fontWeight:
                                                                    FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 0,
                                                      child: Container(
                                                        color: Colors.blue[900],
                                                        width: 350,
                                                        height: 120,
                                                        padding: EdgeInsets.all(16),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(15.0),
                                                              child: Text(
                                                                'This course will focus on building on your basic IT knowledge to give you the skills you require to protect and defend IT systems and digital information.',
                                                                style: TextStyle(
                                                                  fontSize: 11,
                                                                  color:
                                                                      Colors.white,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                              Card(
                                                child: Container(
                                                  height: 350,
                                                  width: 350,
                                                  color: Colors.white,
                                                  child: Stack(children: [
                                                    Container(
                                                      height: 250,
                                                      width: 350,
                                                      // padding: EdgeInsets.all(16),
                                                      decoration: new BoxDecoration(
                                                        image: new DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/images/database.jpeg'),
                                                          fit: BoxFit.fitWidth,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(15.0),
                                                            child: Text(
                                                              'WEB DESIGN',
                                                              style: TextStyle(
                                                                fontSize: 24,
                                                                color: Colors.white,
                                                                fontWeight:
                                                                    FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 0,
                                                      child: Container(
                                                        color: Colors.blue[900],
                                                        width: 350,
                                                        height: 120,
                                                        padding: EdgeInsets.all(16),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(15.0),
                                                              child: Text(
                                                                'Using the latest platform like REACT and FLUTTER, we can provide you with a beautiful website of your desire.',
                                                                style: TextStyle(
                                                                  fontSize: 11,
                                                                  color:
                                                                      Colors.white,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Card(
                                                    child: Container(
                                                      height: 150,
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          3.5,
                                                      color: Colors.white,
                                                      child: Stack(children: [
                                                        Container(
                                                          height: 100,
                                                          width:
                                                              MediaQuery.of(context)
                                                                      .size
                                                                      .height /
                                                                  3.5,
                                                          // padding: EdgeInsets.all(16),
                                                          decoration:
                                                              new BoxDecoration(
                                                            image:
                                                                new DecorationImage(
                                                              image: ExactAssetImage(
                                                                  'assets/images/solar.jpeg'),
                                                              fit: BoxFit.fitWidth,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            // crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(15.0),
                                                                child: Text(
                                                                  'SOLAR POWER',
                                                                  style: TextStyle(
                                                                    fontSize: 18,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Positioned(
                                                          bottom: 0,
                                                          child: Container(
                                                            color: Colors.blue[900],
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height /
                                                                3.5,
                                                            height: 50,
                                                            padding:
                                                                EdgeInsets.all(5),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'We design and deploy over 200kva solar power system and solar mini-grid.',
                                                                  style: TextStyle(
                                                                    fontSize: 8,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ]),
                                                    ),
                                                  ),
                                                  Card(
                                                    child: Container(
                                                      height: 150,
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          3.5,
                                                      color: Colors.white,
                                                      child: Stack(children: [
                                                        Container(
                                                          height: 100,
                                                          width:
                                                              MediaQuery.of(context)
                                                                      .size
                                                                      .height /
                                                                  3.5,
                                                          // padding: EdgeInsets.all(16),
                                                          decoration:
                                                              new BoxDecoration(
                                                            image:
                                                                new DecorationImage(
                                                              image: ExactAssetImage(
                                                                  'assets/images/cyber.jpeg'),
                                                              fit: BoxFit.fitWidth,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            // crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(15.0),
                                                                child: Text(
                                                                  'CYBER SECURITY',
                                                                  style: TextStyle(
                                                                    fontSize: 18,
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Positioned(
                                                          bottom: 0,
                                                          child: Container(
                                                            color: Colors.blue[900],
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height /
                                                                3.5,
                                                            height: 50,
                                                            padding:
                                                                EdgeInsets.all(5),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'This course will focus on building on your basic IT knowledge to protect and defend IT systems and digital information.',
                                                                  style: TextStyle(
                                                                    fontSize: 8,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ]),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Card(
                                                child: Container(
                                                  height: 150,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      3.5,
                                                  color: Colors.white,
                                                  child: Stack(children: [
                                                    Container(
                                                      height: 100,
                                                      width: MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          3.5,
                                                      // padding: EdgeInsets.all(16),
                                                      decoration: new BoxDecoration(
                                                        image: new DecorationImage(
                                                          image: ExactAssetImage(
                                                              'assets/images/database.jpeg'),
                                                          fit: BoxFit.fitWidth,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(15.0),
                                                            child: Text(
                                                              'WEB DESIGN',
                                                              style: TextStyle(
                                                                fontSize: 18,
                                                                color: Colors.white,
                                                                fontWeight:
                                                                    FontWeight.bold,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 0,
                                                      child: Container(
                                                        color: Colors.blue[900],
                                                        width:
                                                            MediaQuery.of(context)
                                                                    .size
                                                                    .height /
                                                                3.5,
                                                        height: 50,
                                                        padding: EdgeInsets.all(5),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Using the latest platform like REACT and FLUTTER, we can provide you with a beautiful website of your desire.',
                                                              style: TextStyle(
                                                                fontSize: 8,
                                                                color: Colors.white,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ],
                                          ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ResponsiveWidget.isLargeScreen(context)
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                height: 150,
                                                width: 200,
                                                // padding: EdgeInsets.all(16),
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: ExactAssetImage(
                                                        'assets/images/microsoft.png'),
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 150,
                                                width: 200,
                                                // padding: EdgeInsets.all(16),
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: ExactAssetImage(
                                                        'assets/images/cisco.png'),
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 150,
                                                width: 200,
                                                // padding: EdgeInsets.all(16),
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: ExactAssetImage(
                                                        'assets/images/facebook.png'),
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 150,
                                                width: 200,
                                                // padding: EdgeInsets.all(16),
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: ExactAssetImage(
                                                        'assets/images/atcyber.png'),
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 150,
                                                width: 200,
                                                // padding: EdgeInsets.all(16),
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: ExactAssetImage(
                                                        'assets/images/google.png'),
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 100,
                                                    // padding: EdgeInsets.all(16),
                                                    decoration: new BoxDecoration(
                                                      image: new DecorationImage(
                                                        image: ExactAssetImage(
                                                            'assets/images/microsoft.png'),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 70,
                                                    width: 100,
                                                    // padding: EdgeInsets.all(16),
                                                    decoration: new BoxDecoration(
                                                      image: new DecorationImage(
                                                        image: ExactAssetImage(
                                                            'assets/images/cisco.png'),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 70,
                                                    width: 100,
                                                    // padding: EdgeInsets.all(16),
                                                    decoration: new BoxDecoration(
                                                      image: new DecorationImage(
                                                        image: ExactAssetImage(
                                                            'assets/images/facebook.png'),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 100,
                                                    // padding: EdgeInsets.all(16),
                                                    decoration: new BoxDecoration(
                                                      image: new DecorationImage(
                                                        image: ExactAssetImage(
                                                            'assets/images/atcyber.png'),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 70,
                                                    width: 100,
                                                    // padding: EdgeInsets.all(16),
                                                    decoration: new BoxDecoration(
                                                      image: new DecorationImage(
                                                        image: ExactAssetImage(
                                                            'assets/images/google.png'),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 70,
                                                    width: 100,
                                                    // padding: EdgeInsets.all(16),
                                                    decoration: new BoxDecoration(
                                                      image: new DecorationImage(
                                                        image: ExactAssetImage(
                                                            'assets/images/sap.png'),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    ResponsiveWidget.isLargeScreen(context)
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                height: 100,
                                                width: 200,
                                                // padding: EdgeInsets.all(16),
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: ExactAssetImage(
                                                        'assets/images/sap.png'),
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 100,
                                                width: 200,
                                                // padding: EdgeInsets.all(16),
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: ExactAssetImage(
                                                        'assets/images/linkedln.png'),
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 100,
                                                width: 200,
                                                // padding: EdgeInsets.all(16),
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: ExactAssetImage(
                                                        'assets/images/mongodb.png'),
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 100,
                                                width: 200,
                                                // padding: EdgeInsets.all(16),
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: ExactAssetImage(
                                                        'assets/images/vmware.png'),
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 100,
                                                width: 200,
                                                // padding: EdgeInsets.all(16),
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: ExactAssetImage(
                                                        'assets/images/amazon.png'),
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 100,
                                                    // padding: EdgeInsets.all(16),
                                                    decoration: new BoxDecoration(
                                                      image: new DecorationImage(
                                                        image: ExactAssetImage(
                                                            'assets/images/linkedln.png'),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 70,
                                                    width: 100,
                                                    // padding: EdgeInsets.all(16),
                                                    decoration: new BoxDecoration(
                                                      image: new DecorationImage(
                                                        image: ExactAssetImage(
                                                            'assets/images/mongodb.png'),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 70,
                                                    width: 100,
                                                    // padding: EdgeInsets.all(16),
                                                    decoration: new BoxDecoration(
                                                      image: new DecorationImage(
                                                        image: ExactAssetImage(
                                                            'assets/images/vmware.png'),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 100,
                                                    // padding: EdgeInsets.all(16),
                                                    decoration: new BoxDecoration(
                                                      image: new DecorationImage(
                                                        image: ExactAssetImage(
                                                            'assets/images/amazon.png'),
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              )
                              // InforCardAnimation(),

                              // child: Container(
                              //     padding: EdgeInsets.all(24),
                              //     child: PageView.builder(
                              //         itemCount: Data.cards.length,
                              //         itemBuilder: (context, index) {
                              //           final cardData = Data.cards[index];

                              //           final card = CardWidget(
                              //             title: cardData.title,
                              //             description: cardData.description,
                              //             color: cardData.color,
                              //             subTitle: cardData.subtitle,
                              //             urlImage: cardData.imgUrl,
                              //           );
                              //           return card;
                              //         })),
                              // child: CardWidget(
                              //   color: cardData.color,
                              //   subTitle: cardData.subtitle,
                              //   description: cardData.description,
                              //   title: cardData.title,
                              //   urlImage: cardData.imgUrl,
                              // ),

                              ),
                        ],
                      ),
                    ),
                    ResponsiveWidget.isLargeScreen(context)
                        ? 
                        Container(
                            alignment: Alignment.centerRight,
                            height: MediaQuery.of(context).size.height,
                            width: 20.0,
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width - 20.0),
                            decoration: BoxDecoration(color:Colors.black12.withOpacity(0.5)),
                            child: Container(
                              alignment: Alignment.topCenter,
                              child: GestureDetector(
                                child: Container(
                                  height: MediaQuery.of(context).size.height/3,
                                  width: 15.0,
                                  margin: EdgeInsets.only(
                                      left: 5.0, right: 5.0, top: _offset),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(3.0),
                                    ),
                                  ),
                                ),
                                onVerticalDragUpdate: (dragUpdate) {
                                  _controller.position
                                      .moveTo(dragUpdate.globalPosition.dy * 3.5);

                                  setState(() {
                                    if (dragUpdate.globalPosition.dy >= 0) {
                                      _offset = dragUpdate.globalPosition.dy;
                                      double maxHeight = MediaQuery.of(context).size.height-MediaQuery.of(context).size.height/3;
                                      _offset =(_offset>maxHeight) ? maxHeight :_offset;
                                    }
                                    print(
                                        "View offset ${_controller.offset} scroll-bar offset $_offset");
                                  });
                                },
                              ),
                            ),
                          )
                        //  FlutterWebScroller(
                        //       //Pass a reference to the ScrollCallBack function into the scrollbar
                        //       scrollCallBack,

                        //       //Add optional values
                        //       scrollBarBackgroundColor: Colors.black12.withOpacity(0.5),
                        //       scrollBarWidth: 20.0,
                        //       dragHandleColor: Colors.red,
                        //       dragHandleBorderRadius: 2.0,
                        //       dragHandleHeight: MediaQuery.of(context).size.height/3,
                        //       dragHandleWidth: 15.0,
                            
                        //  )
                        : Text(''),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Returns true to cancel the notification bubbling.
  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    setState(() => offset = scrollNotification.metrics.pixels);
    return true;
  }
}

class NoScrollGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}

// class CardWidget extends StatelessWidget {
//   final String title;
//   final String description;
//   final String urlImage;
//   final String subTitle;
//   final Color color;

//   const CardWidget({
//     @required this.title,
//     Key key,
//     @required this.description,
//     @required this.urlImage,
//     @required this.subTitle,
//     @required this.color,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // width: 200,
//       // height: 200,
//       padding: const EdgeInsets.all(8),
//       child: Card(
//         clipBehavior: Clip.hardEdge,
//         shape: StadiumBorder(),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(child: buildImage()),
//             Expanded(child: buildText())
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildImage() => Image.asset(
//         urlImage,
//         width: double.infinity,
//         fit: BoxFit.cover,
//       );
//   Widget buildText() => Container(
//         padding: EdgeInsets.all(16),
//         color: color,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               subTitle,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontStyle: FontStyle.italic,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       );
// }
