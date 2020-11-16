import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uplink_tech_hub/main_folder/centered_view/centered_view.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarCallUs extends StatelessWidget {
  const NavBarCallUs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 40,
      color: Colors.blue[900],
      child: CenteredView(
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
              onPressed: () {
                launch("https://www.facebook.com/timsolu");
              },
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
              onPressed: () {
                 launch("https://www.linkedin.com/in/timsolu/");
              },
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
    );
  }
}
