import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/main_folder/extentions/hover_extentions.dart';


class NavBarItem extends StatefulWidget {
  final String title;
  final Function onHover;
  final Function onTap;
  final bool visible;

  const NavBarItem(
      {Key key, this.title, this.onHover, this.onTap, this.visible})
      : super(key: key);
  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: widget.onHover,
      onTap: widget.onTap,
      child: Column(
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 18,
              color: widget.visible ? Colors.deepOrange : Colors.blue[900],
            ),
          ),
          SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: widget.visible,
            child: Container(
              height: 2,
              width: 20,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}
