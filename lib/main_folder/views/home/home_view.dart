import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:uplink_tech_hub/main_folder/views/home/home_content_desktop.dart';
import 'package:uplink_tech_hub/main_folder/views/home/home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
                    mobile: HomeContentMobile(),
                    tablet: HomeContentDesktop(),
                  );
  }
}
