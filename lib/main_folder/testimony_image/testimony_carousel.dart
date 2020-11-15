import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TestimonyCarousel extends StatefulWidget {
  @override
  _TestimonyCarouselState createState() => _TestimonyCarouselState();
}

class _TestimonyCarouselState extends State<TestimonyCarousel> {
  int _current = 0;

  List<Widget> testimony = [
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50),
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
          padding: const EdgeInsets.only(left: 50.0, right: 50),
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
      padding: const EdgeInsets.only(left: 15.0, right: 15),
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
          padding: const EdgeInsets.only(left: 15.0, right: 15),
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
    return Container(
      alignment: Alignment.topRight,
      padding: const EdgeInsets.only(right: 70),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: Column(
          children: [
            Container(
              height: 400,
              width: 580,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.red.withOpacity(0.8),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(400),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CarouselSlider(
                    items: testimony,
                    options: CarouselOptions(
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 7),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      autoPlayAnimationDuration: Duration(milliseconds: 1000),
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
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
            
          ],
        ),
      ),
    );
  }
}
