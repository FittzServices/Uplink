import 'package:flutter/material.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:uplink_tech_hub/home/card_home.dart';
import 'package:uplink_tech_hub/home/course_section.dart';
import 'package:uplink_tech_hub/home/home_carousel.dart';
import 'package:uplink_tech_hub/home/parallax_scroll.dart';
import 'package:uplink_tech_hub/home/partner_page.dart';
import 'package:uplink_tech_hub/home/responsive_widget.dart';
import 'package:uplink_tech_hub/home/school.dart';
import 'package:uplink_tech_hub/shared/constant.dart';
import 'package:uplink_tech_hub/shared/loading.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  final ImageProvider image;
  final Widget child;
  final double height;

  Home({Key key, this.image, this.height, this.child}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      _controller.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
    });
  }

  List _isHovering = [
    false,
    false,
  ];
  final _formkey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String subject = '';
  String request = '';
  String error = '';
  double offset = 0;
  bool loading = false;
  ScrollController _scrollController;
  bool switchPage = false;
  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    setState(() {
      offset = scrollNotification.metrics.pixels;
    });
    return true;
  }

  void _switchController(onPush) {
    setState(() {
      switchPage = onPush;
    });
  }

  _launchURL(String toMailId, String subject, String body) async {
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _onPressDialog() {
    showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return loading
            ? Loading()
            : Dialog(
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.7,
                  width: MediaQuery.of(context).size.width / 2.8,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                    child: Column(
                      children: <Widget>[
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: new SizedBox(
                                  height: 30.0,
                                  width: 30.0,
                                  child: new IconButton(
                                    padding: new EdgeInsets.all(0.0),
                                    color: Colors.red,
                                    icon: new Icon(Icons.close_rounded,
                                        size: 30.0),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  )),
                            ),
                            Text(
                              'Contact Us',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue[900],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Form(
                          key: _formkey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: textInputDecoration.copyWith(
                                    hintText: 'Subject',
                                    // prefixIcon: Icon(Icons.subject),
                                  ),
                                  validator: (val) => val.isEmpty
                                      ? 'Subject cannot be empty'
                                      : null,
                                  onChanged: (val) {
                                    setState(() => subject = val);
                                  },
                                ),
                                SizedBox(height: 10.0),

                                TextFormField(
                                  minLines: 5,
                                  maxLines: 7,
                                  decoration: textInputDecoration.copyWith(
                                    hintText: 'Send us your request',
                                  ),
                                  validator: (val) => val.isEmpty
                                      ? 'Request cannot be empty'
                                      : null,
                                  onChanged: (val) {
                                    setState(() => request = val);
                                  },
                                ),
                                // controller: controllerAddress,

                                SizedBox(height: 20),
                                ButtonTheme(
                                  minWidth: 200.0,
                                  height: 50.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white),
                                  ),
                                  child: RaisedButton(
                                    onPressed: () async {
                                      if (_formkey.currentState.validate()) {
                                        Navigator.pop(context);
                                        _launchURL('info@uplinx.com.ng',
                                            subject, request);
                                      }
                                    },
                                    color: Colors.red[400],
                                    child: Text(
                                      'Send',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Text(
                                  error,
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 14.0),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return ResponsiveWidget(
      largeScreen: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: Column(
            children: [
              PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: Container(
                  color: Colors.blue[900],
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: Row(
                      children: [
                        Text(
                          'Call Us: +2348033454976',
                          style: TextStyle(color: Colors.white),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
                          ),
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                          iconSize: 15,
                        ),
                        SizedBox(
                          width: screenSize.width / 150,
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.linkedinIn,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                          iconSize: 15,
                        ),
                        SizedBox(
                          width: screenSize.width / 150,
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.skype,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                          iconSize: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AppBar(
                backgroundColor: Colors.white,
                // color: Colors.white,
                iconTheme: new IconThemeData(color: Colors.black),
                title: Padding(
                  padding: ResponsiveWidget.isLargeScreen(context)
                      ? const EdgeInsets.only(
                          left: 50,
                          top: 30,
                          bottom: 30,
                        )
                      : const EdgeInsets.only(
                          left: 10,
                          top: 30,
                          bottom: 30,
                        ),
                  child: ResponsiveWidget(
                    largeScreen: Row(
                      mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
                          ? MainAxisAlignment.spaceBetween
                          : MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/uplink2.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Uplink Digital Institute',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: ResponsiveWidget.isSmallScreen(context)
                    ? null
                    : [
                        Padding(
                          padding: const EdgeInsets.only(right: 60.0),
                          child: Row(
                            children: [
                              InkWell(
                                onHover: (value) {
                                  setState(() {
                                    _isHovering[0] = value;
                                  });
                                },
                                onTap: () {
                                  _switchController(false);
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Home',
                                      style: TextStyle(
                                          color: _isHovering[0]
                                              ? Colors.deepOrange
                                              : Colors.blue[900],
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 5),
                                    // For showing an underline on hover
                                    Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: _isHovering[0],
                                      child: Container(
                                        height: 2,
                                        width: 20,
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: screenSize.width / 50,
                              ),
                              InkWell(
                                onHover: (value) {
                                  setState(() {
                                    _isHovering[1] = value;
                                  });
                                },
                                onTap: () {
                                  _switchController(true);
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Partners',
                                      style: TextStyle(
                                          color: _isHovering[1]
                                              ? Colors.deepOrange
                                              : Colors.blue[900],
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 5),
                                    // For showing an underline on hover
                                    Visibility(
                                      maintainAnimation: true,
                                      maintainState: true,
                                      maintainSize: true,
                                      visible: _isHovering[1],
                                      child: Container(
                                        height: 2,
                                        width: 20,
                                        color: Colors.deepOrange,
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
            ],
          ),
        ),
        // appBar:
        endDrawer:
            // data: Theme.of(context).copyWith(
            //   canvasColor: Colors.transparent,
            // ),
            Drawer(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/computer.jpeg'),
                          fit: BoxFit.cover),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Uplink Digital Institute',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Icon(Icons.home, color: Colors.blue),
                          title: Text(
                            'Home',
                            style: TextStyle(
                                color: _isHovering[1]
                                    ? Colors.deepOrange
                                    : Colors.blue[900],
                                fontSize: 15),
                          ),
                          onTap: () {
                            _switchController(false);
                            Navigator.of(context).pop();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.handyman, color: Colors.blue),
                          title: Text(
                            'Partners',
                            style: TextStyle(
                                color: _isHovering[1]
                                    ? Colors.deepOrange
                                    : Colors.blue[900],
                                fontSize: 15),
                          ),
                          onTap: () {
                            _switchController(true);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),

        // endDrawer: Drawer(
        //   child: ListView(
        //     children: [Text('Drawer')],
        //   ),
        // ),
        body: !switchPage
            ? Stack(
                children: [
                  Container(
                    child: SingleChildScrollView(
                      //Assign the controller to my scrollable widget
                      controller: _controller,
                      child: ResponsiveWidget(
                        largeScreen: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 1.5,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.blue.withOpacity(0.5),
                              child: HomeCarousel(),
                            ),
                            Container(
                              height: 100,
                              color: Colors.blue[900],
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 20,
                                      width: 30,
                                      child: CustomPaint(
                                          size: Size(200, 200),
                                          painter: DrawTriangle()),
                                    ),
                                  ),
                                  Center(
                                    child: Row(
                                      // mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,

                                      children: [
                                        Text(
                                          'Got any questions?',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 30,
                                          ),
                                        ),
                                        RaisedButton(
                                          onPressed: () {
                                            _onPressDialog();
                                          },
                                          textColor: Colors.white,
                                          padding: const EdgeInsets.all(0.0),
                                          child: Container(
                                            width: 135,
                                            decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: <Color>[
                                                  Color(0xFFB71C1C),
                                                  Color(0xFFEF5350),
                                                  Color(0xFFFFCDD2),
                                                ],
                                              ),
                                            ),
                                            padding: const EdgeInsets.all(10.0),
                                            child: const Text('Contact Us',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 20)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CardHome(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: ResponsiveWidget.isLargeScreen(context)
                                      ? MediaQuery.of(context).size.height / 2
                                      : MediaQuery.of(context).size.width * 1.6,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.blue[900],
                                  child: CourseSection(),
                                ),
                              ],
                            ),
                            Container(
                              height: ResponsiveWidget.isLargeScreen(context)
                                  ? MediaQuery.of(context).size.height / 2.5
                                  : MediaQuery.of(context).size.width * 1.4,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              child: CoporateTraining(),
                            ),
                            Container(
                              height: ResponsiveWidget.isLargeScreen(context)
                                  ? MediaQuery.of(context).size.height / 2.7
                                  : MediaQuery.of(context).size.width * 1.4,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.blue[900],
                              child: OnlineTraining(),
                            ),
                            Container(
                              height: ResponsiveWidget.isLargeScreen(context)
                                  ? MediaQuery.of(context).size.height / 2.5
                                  : MediaQuery.of(context).size.height * 1.2,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              child: BusinessSchool(),
                            ),
                            ParallaxPage(),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
               ResponsiveWidget.isLargeScreen(context)?   FlutterWebScroller(
                    //Pass a reference to the ScrollCallBack function into the scrollbar
                    scrollCallBack,

                    //Add optional values
                    scrollBarBackgroundColor: Colors.white,
                    scrollBarWidth: 20.0,
                    dragHandleColor: Colors.red,
                    dragHandleBorderRadius: 2.0,
                    dragHandleHeight: 40.0,
                    dragHandleWidth: 15.0,
                  ):Text(''),
                ],
              )

            : PartnerPage(),
      ),
    );
  }
}

class DrawTriangle extends CustomPainter {
  Paint _paint;
  DrawTriangle() {
    _paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
  }
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
