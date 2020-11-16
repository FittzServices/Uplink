import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/locator.dart';
import 'package:uplink_tech_hub/main_folder/extentions/hover_extentions.dart';
import 'package:uplink_tech_hub/services/navigation_services.dart';

class NavBarItem extends StatefulWidget {
  final String title;
  final Function onHover;
  final String onTap;
  final String categorySelected;
  final bool visible;

  const NavBarItem(
      {Key key,
      this.title,
      this.onHover,
      this.visible,
      this.onTap,
      this.categorySelected})
      : super(key: key);
  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  List<String> selectedCategory = new List<String>();
  String category1 = 'category 1';
  String category2 = 'category 2';
  String category3 = 'category 3';

  @override
  void initState() {
    //Initialize the  scrollController
    selectedCategory = new List<String>();
    selectedCategory.add(category1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onHover: widget.onHover,
        onTap: () {
          selectedCategory = new List<String>();
          selectedCategory.add(widget.categorySelected);
          setState(() {});
          locator<NavigationService>().navigateTo(widget.onTap);
        },
        child: Column(
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 18,
                color: selectedCategory.contains(widget.categorySelected)
                    ? Colors.deepOrange
                    : Colors.blue[900],
              ),
            ),
            SizedBox(height: 5),
            Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              visible: selectedCategory.contains(widget.categorySelected),
              child: Container(
                height: 2,
                width: 20,
                color: selectedCategory.contains(widget.categorySelected)
                    ? Colors.deepOrange
                    : Colors.blue[900],
              ),
            ),
          ],
        ),
      ).showCursorOnHover.moveUpOnHover,
    );
  }
}
