import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:uplink_tech_hub/shared/constant.dart';



class SocalCard extends StatefulWidget {
  const SocalCard({
    Key key,
    this.iconSrc,
    this.name,
    this.color,
    this.press,
  }) : super(key: key);

  final String iconSrc, name;
  final Color color;
  final Function press;

  @override
  _SocalCardState createState() => _SocalCardState();
}

class _SocalCardState extends State<SocalCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
           builder: (context, sizingInformation) =>  FittedBox(
        child: InkWell(
          onTap: widget.press,
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding * 1.5,
            ),
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow],
            ),
            child: ScreenTypeLayout(
                          tablet: Row(
                children: [
                  Image.asset(
                    widget.iconSrc,
                    height: 60,
                    width: 80,
                  ),
                  SizedBox(width: kDefaultPadding),
                  Text(widget.name),
                ],
              ),
              mobile: Column(
                children: [
                  Image.asset(
                    widget.iconSrc,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: kDefaultPadding),
                  Text(widget.name),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}