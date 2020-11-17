import 'package:flutter/material.dart';


class SectionViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue[900],
      child: Padding(
        padding: const EdgeInsets.only(left:18),
        child: Row(
          children: [
            new Container(
              child: new Row(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  new Container(
                    height: 70,
                    width: 100,
                    padding: new EdgeInsets.only(left: 5),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Text(
                          "20",
                          style: new TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        new Text(
                          "Teachers",
                          style: new TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              child: new Row(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.book,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  new Container(
                    height: 70,
                    width: 100,
                    padding: new EdgeInsets.only(left: 5),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Text(
                          "45",
                          style: new TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        new Text(
                          "Courses",
                          style: new TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              child: new Row(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.people,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  new Container(
                    height: 70,
                    width: 100,
                    padding: new EdgeInsets.only(left: 5),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Text(
                          "700 +",
                          style: new TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        new Text(
                          "Students",
                          style: new TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
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
