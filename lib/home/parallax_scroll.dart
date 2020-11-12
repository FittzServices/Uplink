import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/home/blur_section.dart';
import 'package:uplink_tech_hub/home/parallax_image.dart';
import 'package:uplink_tech_hub/home/responsive_widget.dart';

class ParallaxPage extends StatefulWidget {
  @override
  _ParallaxPageState createState() => _ParallaxPageState();
}

class _ParallaxPageState extends State<ParallaxPage> {
  midsection(context) => Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ResponsiveWidget.isLargeScreen(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Container(
                      child: new Row(
                        children: <Widget>[
                          Container(
                            child: Icon(
                              Icons.person,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                          new Container(
                            height: 70,
                            width: 200,
                            padding: new EdgeInsets.only(left: 5),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                new Text(
                                  "20",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0,
                                  ),
                                ),
                                new Text(
                                  "Teachers",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      child: new Row(
                        children: <Widget>[
                          Container(
                            child: Icon(
                              Icons.book,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                          new Container(
                            height: 70,
                            width: 200,
                            padding: new EdgeInsets.only(left: 5),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                new Text(
                                  "45",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0,
                                  ),
                                ),
                                new Text(
                                  "Courses",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      child: new Row(
                        children: <Widget>[
                          Container(
                            child: Icon(
                              Icons.people,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                          new Container(
                            height: 70,
                            width: 200,
                            padding: new EdgeInsets.only(left: 5),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                new Text(
                                  "700 +",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0,
                                  ),
                                ),
                                new Text(
                                  "Students",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 165),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: new Container(
                            child: new Row(
                              children: <Widget>[
                                Container(
                                  child: Icon(
                                    Icons.person,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                new Container(
                                  height: 70,
                                  width: 200,
                                  padding: new EdgeInsets.only(left: 5),
                                  child: new Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      new Text(
                                        "20",
                                        style: new TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0,
                                        ),
                                      ),
                                      new Text(
                                        "Teachers",
                                        style: new TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        new Container(
                          child: new Row(
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.book,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                              new Container(
                                height: 70,
                                width: 200,
                                padding: new EdgeInsets.only(left: 5),
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    new Text(
                                      "45",
                                      style: new TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0,
                                      ),
                                    ),
                                    new Text(
                                      "Courses",
                                      style: new TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          child: new Row(
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.people,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                              new Container(
                                height: 70,
                                width: 200,
                                padding: new EdgeInsets.only(left: 5),
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    new Text(
                                      "700 +",
                                      style: new TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0,
                                      ),
                                    ),
                                    new Text(
                                      "Students",
                                      style: new TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: ParallaxImage(
        height: ResponsiveWidget.isLargeScreen(context) ? 900 : 1500,
        image: ExactAssetImage('assets/images/business2.jpeg'),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: ResponsiveWidget.isLargeScreen(context)
                    ? MediaQuery.of(context).size.height / 5.5
                    : MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue[900],
                child: midsection(context),
              ),
              BlurImage(),
              Container(
                  height: ResponsiveWidget.isLargeScreen(context)
                      ? MediaQuery.of(context).size.height / 1.5
                      : MediaQuery.of(context).size.height,
                  color: Colors.blue[900],
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ResponsiveWidget.isLargeScreen(context)
                            ? Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      child: Column(
                                        children: [
                                          Text(
                                            '|About Us',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.2,
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Text(
                                            'Uplinx Digital Institute – We are a fast-growing capacity development organization in Nigeria. We develop capacity in the area of Information Technology, Solar Power System, Personal Development and Leadership. We work with organizations and individual to achieving lofty goals of their dream. We are a growth partner to our highly esteemed clients. Any deal with us is a promise of satisfaction.',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.white70,
                                              letterSpacing: 1.2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 10,
                                    // ),
                                    Expanded(
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                2,
                                        width:
                                            MediaQuery.of(context).size.height /
                                                2,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 200,
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '|Training Services',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      letterSpacing: 1.2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Individual Training',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      letterSpacing: 1.2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 25),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Corporate Training',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      letterSpacing: 1.2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 25),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Online Training',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      letterSpacing: 1.2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 25),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Exams',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Colors.white70,
                                                      letterSpacing: 1.2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 10,
                                    // ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, right: 30),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '|Contact info',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1.2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Head Office Location:',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    letterSpacing: 1.2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 30),
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_pin,
                                                        color: Colors.red,
                                                      ),
                                                      SizedBox(width: 2),
                                                      Text(
                                                        '12, Western Reservoir Road,\nOpp. Peculiar Grace Supermarket,\nOlorunsogo, Geri Alimi Area, \nIlorin. Kwara State. Nigeria',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: Colors.white70,
                                                          letterSpacing: 1.2,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 30),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.phone_iphone,
                                                      color: Colors.red,
                                                    ),
                                                    SizedBox(width: 2),
                                                    Text(
                                                      'Mobile:+234 9077669153',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: Colors.white70,
                                                        letterSpacing: 1.2,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 30),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.email,
                                                      color: Colors.red,
                                                    ),
                                                    SizedBox(width: 2),
                                                    Text(
                                                      'Email:info@uplinx.com.ng',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: Colors.white70,
                                                        letterSpacing: 1.2,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 8.0, right: 8, bottom: 8),
                                child: Column(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3.5,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      child: Column(
                                        children: [
                                          Text(
                                            '|About Us',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.2,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'Uplinx Digital Institute – We are a fast-growing capacity development organization in Nigeria. We develop capacity in the area of Information Technology, Solar Power System, Personal Development and Leadership. We work with organizations and individual to achieving lofty goals of their dream. We are a growth partner to our highly esteemed clients. Any deal with us is a promise of satisfaction.',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.white70,
                                              letterSpacing: 1.2,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4.5,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      child: Column(
                                        children: [
                                          Text(
                                            '|Training Services',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'Individual Training',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 12,
                                                color: Colors.white70),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'Corporate Training',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 12,
                                                color: Colors.white70),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'Online Training',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 12,
                                                color: Colors.white70),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'Exams',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 12,
                                                color: Colors.white70),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, right: 30),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '|Contact info',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1.2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Head Office Location:',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    letterSpacing: 1.2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_pin,
                                                        color: Colors.red,
                                                      ),
                                                      SizedBox(width: 2),
                                                      Text(
                                                        '12, Western Reservoir Road,\nOpp. Peculiar Grace Supermarket,\nOlorunsogo, Geri Alimi Area, \nIlorin. Kwara State. Nigeria',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.white70,
                                                          letterSpacing: 1.2,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.phone_iphone,
                                                      color: Colors.red,
                                                    ),
                                                    SizedBox(width: 2),
                                                    Text(
                                                      'Mobile:+234 9077669153',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white70,
                                                        letterSpacing: 1.2,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.email,
                                                      color: Colors.red,
                                                    ),
                                                    SizedBox(width: 2),
                                                    Text(
                                                      'Email:info@uplinx.com.ng',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white70,
                                                        letterSpacing: 1.2,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ),
                      Container(
                        height: 40,
                        color: Colors.black,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            '@COPYRIGHT 2020 UPLINK DIGITAL INSTITUTE',
                            style: TextStyle(color: Colors.white60),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
