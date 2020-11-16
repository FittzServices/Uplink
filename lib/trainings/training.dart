import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uplink_tech_hub/trainings/menu.dart';
// import 'package:uplink_tech_hub/shared/constant.dart';
import 'package:uplink_tech_hub/trainings/training_services/contact_us/training_contact_us.dart';
import 'package:uplink_tech_hub/trainings/training_services/courses_offered/courses.dart';
import 'package:uplink_tech_hub/trainings/training_services/trainings/training_types.dart';
// import 'package:uplink_tech_hub/trainings/trainings_top_section.dart';

enum Page { screenDashboard, screenProfile, screenSearch }

extension on Page {
  String get route => describeEnum(this);
}

class Trainings extends HookWidget {
  final Map<Page, Widget> _fragments = {
    Page.screenDashboard: DashboardPage(),
    Page.screenProfile: UserProfilePage(),
    Page.screenSearch: SearchPage(),
  };

  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalObjectKey<NavigatorState>(context);

    return WillPopScope(
      onWillPop: () async {
        if (navigatorKey.currentState.canPop()) {
          navigatorKey.currentState.pop();
          return false;
        }

        return true;
      },
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('BackStack Screen'),
        // ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50.0,
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                color: Colors.blue[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.orange[800],
                      onPressed: () => navigatorKey.currentState
                          .pushNamed(Page.screenDashboard.route),
                      child: Text(
                        'Course',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.orange[800],
                      onPressed: () => navigatorKey.currentState
                          .pushNamed(Page.screenProfile.route),
                      child: Text(
                        'Projects',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.orange[800],
                      onPressed: () => navigatorKey.currentState
                          .pushNamed(Page.screenSearch.route),
                      child: Text(
                        'Contact',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Navigator(
                  key: navigatorKey,
                  initialRoute: Page.screenDashboard.route,
                  onGenerateRoute: (settings) {
                    final pageName = settings.name;

                    final page = _fragments.keys.firstWhere(
                        (element) => describeEnum(element) == pageName);

                    return MaterialPageRoute(
                        settings: settings,
                        builder: (context) => _fragments[page]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: RecentWorkSection(),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: CoursesOffered(),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: ContactSection(),
      ),
    );
  }
}

// class Trainings extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:SingleChildScrollView(
//               child: Column(
//           children: [
//             TopSection(),
//             SizedBox(height: kDefaultPadding * 2),
//             CoursesOffered(),
//              SizedBox(height: kDefaultPadding),
//             ContactSection()
//           ],
//         ),
//       ),
//     );
//   }
// }
