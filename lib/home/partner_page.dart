import 'dart:html';

import 'package:flutter/material.dart';
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
  AnimationController animationController;
  Animation<Color> animationColor;
  // final cardData = Data.cards[0];
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    animationColor = Tween(begin: Colors.white, end: Colors.blue[900])
        .animate(animationController)
          ..addListener(() {
            setState(() {});
          });

    super.initState();
  }

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
    return ResponsiveWidget(
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
                  child: FadeInImage.memoryNetwork(
                    // From the transparent_image package
                    placeholder: kTransparentImage,
                    image: 'assets/images/business3.jpeg',
                    height: height / 1.5,
                    width: width,
                    fit: BoxFit.fitWidth,
                  ),
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
                                : const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                ResponsiveWidget.isLargeScreen(context)
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Card(
                                            color: animationColor.value,
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
                                            color: animationColor.value,
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
                                            color: animationColor.value,
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
                                                color: animationColor.value,
                                                child: Container(
                                                  height: 150,
                                                  width: 200,
                                                  color: Colors.white,
                                                  child: Stack(children: [
                                                    Container(
                                                      height: 100,
                                                      width: 200,
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
                                                        width: 200,
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
                                                color: animationColor.value,
                                                child: Container(
                                                  height: 150,
                                                  width: 200,
                                                  color: Colors.white,
                                                  child: Stack(children: [
                                                    Container(
                                                      height: 100,
                                                      width: 200,
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
                                                        width: 200,
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
                                            color: animationColor.value,
                                            child: Container(
                                              height: 150,
                                              width: 200,
                                              color: Colors.white,
                                              child: Stack(children: [
                                                Container(
                                                  height: 100,
                                                  width: 200,
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
                                                    width: 200,
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
                )
              ],
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
