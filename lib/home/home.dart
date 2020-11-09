import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:uplink_tech_hub/home/card_home.dart';
import 'package:uplink_tech_hub/home/course_section.dart';
import 'package:uplink_tech_hub/home/home_carousel.dart';
import 'package:uplink_tech_hub/home/parallax_scroll.dart';
import 'package:uplink_tech_hub/home/responsive_widget.dart';
import 'package:uplink_tech_hub/home/school.dart';
import 'package:uplink_tech_hub/shared/constant.dart';
import 'package:uplink_tech_hub/shared/loading.dart';

class Home extends StatefulWidget {
  final ImageProvider image;
  final Widget child;
  final double height;

  Home({Key key, this.image, this.height, this.child}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _isHovering = [
    false,
    false,
  ];
  final _formkey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String email = '';
  String request = '';
  String error = '';
  double offset = 0;
  bool loading = false;
  ScrollController _scrollController;
  

  bool updateOffsetAccordingToScroll(ScrollNotification scrollNotification) {
    setState(() {
      offset = scrollNotification.metrics.pixels;
    });
    return true;
  }

  void _onPressDialog() {
    showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return loading
            ? Loading()
            : Dialog(
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.8,
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
                                    hintText: 'Email',
                                    prefixIcon: Icon(Icons.email),
                                  ),
                                  validator: (val) => val.isEmpty
                                      ? 'Enter an email address'
                                      : null,
                                  onChanged: (val) {
                                    setState(() => email = val);
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
                                        //HelperFunctions.saveUserNameSharedPreference(firstName);

                                        print(email);
                                        print(request);
                                        Navigator.pop(context);

                                        // setState(() {
                                        //   loading = true;
                                        // });

                                        // dynamic result = null;

                                        // if (result == null) {
                                        //   setState(() {
                                        //     error =
                                        //         'Email or Password is not correct, Please try again';
                                        //     loading = false;
                                        //   });
                                        // } else {
                                        //   Navigator.pop(context);
                                        // }
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
        endDrawer: Drawer(
          child: ListView(
            children: [Text('Drawer')],
          ),
        ),
        body: SingleChildScrollView(
        
          child: ResponsiveWidget(
            largeScreen: Column(
              children: <Widget>[
                PreferredSize(
                  preferredSize: Size.fromHeight(100.0),
                  child: AppBar(
                    backgroundColor: Colors.white,
                    // color: Colors.white,

                    title: Padding(
                       padding: ResponsiveWidget.isLargeScreen(context)? const EdgeInsets.only(
                        left: 50,
                        top: 30,
                        bottom: 30,
                      ):
                      const EdgeInsets.only(
                        left: 10,
                        top: 30,
                        bottom: 30,
                      ),
                      child: ResponsiveWidget(
                        largeScreen: Row(
                          mainAxisAlignment:
                              ResponsiveWidget.isSmallScreen(context)
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
                                        image: AssetImage(
                                            'assets/images/uplink2.png'),
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
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(right: 60.0),
                        child: ResponsiveWidget.isSmallScreen(context)
                            ? Icon(
                                Icons.menu,
                                color: Colors.blue[900],
                              )
                            : Row(
                                children: [
                                  InkWell(
                                    onHover: (value) {
                                      setState(() {
                                        _isHovering[0] = value;
                                      });
                                    },
                                    onTap: () {},
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
                                    onTap: () {},
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'About Us',
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
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
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
                              size: Size(200, 200), painter: DrawTriangle()),
                        ),
                      ),
                      Center(
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

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
                Container(
                  height: ResponsiveWidget.isLargeScreen(context)
                      ? MediaQuery.of(context).size.height / 2
                      : MediaQuery.of(context).size.width * 1.6,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue[900],
                  child: CourseSection(),
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
                      : MediaQuery.of(context).size.width * 1.3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue[900],
                  child: OnlineTraining(),
                ),
                Container(
                  height: ResponsiveWidget.isLargeScreen(context)
                      ? MediaQuery.of(context).size.height / 2.5
                      : MediaQuery.of(context).size.height*1.2,
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
