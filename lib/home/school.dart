import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/home/responsive_widget.dart';

class OnlineTraining extends StatelessWidget {
  imageUsed(context) => Container(
        height: 200,
        width: 450,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: DecorationImage(
            image: ExactAssetImage('assets/images/online.jpeg'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      );
  dataUsed(context) => Column(
        crossAxisAlignment: ResponsiveWidget.isLargeScreen(context)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Online Trainings',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'We have e-learning platform, which provides learners the opportunity to learn anytime, anywhere at learner’s pace ',
            textAlign: ResponsiveWidget.isLargeScreen(context)
                ? TextAlign.start
                : TextAlign.center,
            style: TextStyle(
              height: 2,
              color: Colors.white,
              fontSize: 15,
              letterSpacing: 1.0,
              wordSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {},
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
              child: const Text(
                'View Courses',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 400,
              // color: Colors.white,
              child: dataUsed(context),
            ),
            imageUsed(context)
          ],
        ),
      ),
      smallScreen: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            imageUsed(context),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 300,
              width: 200,
              // color: Colors.white,
              child: dataUsed(context),
            ),
          ],
        ),
      ),
    );
  }
}

class BusinessSchool extends StatelessWidget {
  imageUsed(context) => Container(
        height: 350,
        width: 400,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: DecorationImage(
            image: ExactAssetImage('assets/images/carousel2.jpeg'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.grey[300],
            width: 10.0,
          ),
        ),
      );
  dataUsed(context) => Column(
        crossAxisAlignment: ResponsiveWidget.isLargeScreen(context)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'School Business Services',
            textAlign: ResponsiveWidget.isLargeScreen(context)?TextAlign.start:TextAlign.center,
            style: TextStyle(
              color: Colors.black38,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'You’ll experience the very best in personal service. Experience the comfort of one point of contact with the confidence of a great team of specialists on-hand. ',
            textAlign: ResponsiveWidget.isLargeScreen(context)
                ? TextAlign.start
                : TextAlign.center,
            style: TextStyle(
              height: 2,
              color: Colors.black54,
              fontSize: 15,
              letterSpacing: 1.0,
              wordSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: 135,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Learn More',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            imageUsed(context),
            Container(
               height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.height/2,
              // color: Colors.white,
              child: dataUsed(context),
            ),
          ],
        ),
      ),
      smallScreen: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            imageUsed(context),
            SizedBox(
              height: 50,
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.height/2,
              // color: Colors.white,
              child: dataUsed(context),
            ),
          ],
        ),
      ),
    );
  }
}
