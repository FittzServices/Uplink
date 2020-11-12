import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/home/responsive_widget.dart';

class ParallaxImage extends StatefulWidget {
  final ImageProvider image;
  final Widget child;
  final double height;

  ParallaxImage({Key key, this.image, this.height, this.child})
      : super(key: key);

  @override
  _ParallaxImageState createState() => _ParallaxImageState();
}

class _ParallaxImageState extends State<ParallaxImage> {
  ScrollController _scrollController;
  double _scrollPosition = 0;
  int _current = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
      // debugPrint(_scrollPosition.toString());
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  List<Widget> testimony = [
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:50.0, right: 50),
          child: Text(
            'I think the experience and the exposure to different teaching styles has given me a different perspective about life and what I really want to do.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Ogunyeye Dele',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 13,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Student',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 10,
          ),
        ),
      ],
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:50.0, right: 50),
          child: Text(
            'Classes in my curriculum were always available, this made scheduling around my full-time job easy. The courses offered were directly related to my career and helped me advance my position in the IT world.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Adama Wale',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 13,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Programmer',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 10,
          ),
        ),
      ],
    ),
    Padding(
      padding: const EdgeInsets.only(left:20.0, right: 22),
      child: Column(
        children: [
          Text(
            'Very good trainers, well prepared .I actualy got the first job before i have finished the course. All of the interview questions were made in class and beucause the course is well made it was easy to pass that interview.It was a realy nice adventure and got me at the point of a career change',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Adigun Ayeni',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 13,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'IT Assistance',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 10,
            ),
          ),
        ],
      ),
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:20.0, right: 20),
          child: Text(
            'Due to my previous experiences at other school, I was reluctant, but friendly and service-oriented representative convinced me that I am doing the right thing. I chose the web development program, and this institutehas met my expectations, with an excellent tutor and academic environment',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Bimpe Bakare',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 13,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Student',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 10,
          ),
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 1.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: widget.image,
                  fit: BoxFit.cover,
                  alignment: AlignmentDirectional.topStart,
                ),
              ),
              child: Padding(
                padding: ResponsiveWidget.isLargeScreen(context)
                    ? const EdgeInsets.only(right: 150.0)
                    : const EdgeInsets.only(right: 5.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 1.8,
                        width: ResponsiveWidget.isLargeScreen(context)
                            ? MediaQuery.of(context).size.height / 1.5
                            : MediaQuery.of(context).size.height / 1.7,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.red.withOpacity(0.8),
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(400),
                          ),
                        ),
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: ResponsiveWidget.isLargeScreen(context)
                                    ? const EdgeInsets.only(top: 100.0)
                                    : const EdgeInsets.only(top: 30.0),
                                child: CarouselSlider(
                                  items: testimony,
                                  options: CarouselOptions(
                                    aspectRatio: 2.0,
                                    enlargeCenterPage: true,
                                    autoPlay: true,
                                    autoPlayInterval: Duration(seconds: 7),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 1000),
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        _current = index;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: testimony.map((url) {
                                    int index = testimony.indexOf(url);
                                    return Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _current == index
                                            ? Color.fromRGBO(
                                                0,
                                                0,
                                                0,
                                                0.9,
                                              )
                                            : Color.fromRGBO(
                                                0,
                                                0,
                                                0,
                                                0.4,
                                              ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: widget.child,
            ),
          ],
        ),
      ),
    );
  }
}
