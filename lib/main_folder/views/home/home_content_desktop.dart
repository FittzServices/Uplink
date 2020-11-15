import 'package:flutter/material.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';
import 'package:uplink_tech_hub/main_folder/blur_image/blur_image_address.dart';
import 'package:uplink_tech_hub/main_folder/card_view/card_view.dart';
import 'package:uplink_tech_hub/main_folder/carousel_images/carousel_images.dart';
import 'package:uplink_tech_hub/main_folder/centered_view/centered_view.dart';
import 'package:uplink_tech_hub/main_folder/course_details/course_details.dart';
import 'package:uplink_tech_hub/main_folder/course_details/course_images_details.dart';
import 'package:uplink_tech_hub/main_folder/footer/footer.dart';
import 'package:uplink_tech_hub/main_folder/mid_question/section_view.dart';
import 'package:uplink_tech_hub/main_folder/testimony_image/testimony_image.dart';
import 'package:uplink_tech_hub/main_folder/views/contact_us/contact_us.dart';

class HomeContentDesktop extends StatefulWidget {
  @override
  _HomeContentDesktopState createState() => _HomeContentDesktopState();
}

class _HomeContentDesktopState extends State<HomeContentDesktop> {
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
      _controller.position.moveTo(dragUpdate.globalPosition.dy);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              CarouselImages(),
              ContactUs(),
              CardView(),
              Container(
                color: Colors.blue[900],
                height: 400,
                child: CenteredView(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(child: IndividualTraining()),
                    Center(
                      child: IndividualTrainingImage(),
                    ),
                  ],
                )),
              ),
              Container(
                  color: Colors.white,
                  height: 400,
                  child: CenteredView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: CorporateTrainingImage(),
                        ),
                        Center(child: CoorporateTrainings()),
                      ],
                    ),
                  )),
              Container(
                color: Colors.blue[900],
                height: 300,
                child: CenteredView(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(child: OnlineTrainings()),
                    Center(
                      child: OnlineTrainingImage(),
                    ),
                  ],
                )),
              ),
              TestimonySection(),
              SectionView(),
              BlurImageAddress(),
              FooterSection(),
            ],
          ),
        ),
        // FlutterWebScroller(
        //   //Pass a reference to the ScrollCallBack function into the scrollbar
        //   scrollCallBack,

        //   //Add optional values
        //   scrollBarBackgroundColor: Colors.black12.withOpacity(0.5),
        //   scrollBarWidth: 20.0,
        //   dragHandleColor: Colors.red,
        //   dragHandleBorderRadius: 2.0,
        //   dragHandleHeight: MediaQuery.of(context).size.height / 3,
        //   dragHandleWidth: 15.0,
        // )
      ],
    );
  }
}
