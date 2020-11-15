import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/locator.dart';
import 'package:uplink_tech_hub/main_folder/extentions/hover_extentions.dart';
import 'package:uplink_tech_hub/main_folder/routing/route_names.dart';
import 'package:uplink_tech_hub/services/navigation_services.dart';

class IndividualTraining extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            'Individual Trainings',
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
            'You’ll experience the very best in personal service. Experience the comfort of one point of contact with the confidence of a great team of specialists on-hand. ',
            textAlign: TextAlign.start,
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
            onPressed: () {
              locator<NavigationService>().navigateTo(TrainingRoute);
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
              child: const Text(
                'View Courses',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ).showCursorOnHover.moveUpOnHover,
        ],
      ),
    );
  }
}

class CoorporateTrainings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            'Corporate Trainings',
            textAlign: TextAlign.start,
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
            textAlign: TextAlign.start,
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
            onPressed: () {
              locator<NavigationService>().navigateTo(TrainingRoute);
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
              child: const Text(
                'View Courses',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ).showCursorOnHover.moveUpOnHover,
        ],
      ),
    );
  }
}

class OnlineTrainings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

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
              textAlign: TextAlign.start,
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
              onPressed: () {
                locator<NavigationService>().navigateTo(TrainingRoute);
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
                child: const Text(
                  'View Courses',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ).showCursorOnHover.moveUpOnHover,
          ],
        ));
  }
}
