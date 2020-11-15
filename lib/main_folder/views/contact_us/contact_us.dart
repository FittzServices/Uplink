import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/main_folder/centered_view/centered_view.dart';
import 'package:uplink_tech_hub/main_folder/shared/constant.dart';
import 'package:uplink_tech_hub/main_folder/shared/loading.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uplink_tech_hub/main_folder/extentions/hover_extentions.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  String subject = '';
  String request = '';
  String error = '';
  bool loading = false;

  final _formkey = GlobalKey<FormState>();

  _launchURL(String toMailId, String subject, String body) async {
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _onPressDialog() {
    showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return loading
            ? Loading()
            : Dialog(
                child: Container(
                  height: 450,
                  width: 500,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                    child: Column(
                      children: <Widget>[
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: new SizedBox(
                                  height: 30.0,
                                  width: 30.0,
                                  child: new IconButton(
                                    padding: new EdgeInsets.all(0.0),
                                    color: Colors.red,
                                    icon: new Icon(Icons.close_rounded,
                                        size: 30.0),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  )),
                            ),
                            Text(
                              'Contact Us',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue[900],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Form(
                          key: _formkey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: textInputDecoration.copyWith(
                                    hintText: 'Subject',
                                    // prefixIcon: Icon(Icons.subject),
                                  ),
                                  validator: (val) => val.isEmpty
                                      ? 'Subject cannot be empty'
                                      : null,
                                  onChanged: (val) {
                                    setState(() => subject = val);
                                  },
                                ),
                                SizedBox(height: 10.0),

                                TextFormField(
                                  minLines: 5,
                                  maxLines: 7,
                                  decoration: textInputDecoration.copyWith(
                                    hintText: 'Send us your request',
                                  ),
                                  validator: (val) => val.isEmpty
                                      ? 'Request cannot be empty'
                                      : null,
                                  onChanged: (val) {
                                    setState(() => request = val);
                                  },
                                ),
                                // controller: controllerAddress,

                                SizedBox(height: 20),
                                ButtonTheme(
                                  minWidth: 200.0,
                                  height: 50.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white),
                                  ),
                                  child: RaisedButton(
                                    onPressed: () async {
                                      if (_formkey.currentState.validate()) {
                                        Navigator.pop(context);
                                        _launchURL('info@uplinx.com.ng',
                                            subject, request);
                                      }
                                    },
                                    color: Colors.red[400],
                                    child: Text(
                                      'Send',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Text(
                                  error,
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 14.0),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.blue[900],
      child: CenteredView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 20,
                width: 30,
                child:
                    CustomPaint(size: Size(200, 200), painter: DrawTriangle()),
              ),
            ),
            Center(
              child: Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    'Got any questions?',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 20,),
                  RaisedButton(
                    onPressed: () {
                      _onPressDialog();
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: 130,
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
                      child: const Text('Contact Us',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18)),
                    ),
                  ).showCursorOnHover.moveUpOnHover,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawTriangle extends CustomPainter {
  Paint _paint;
  DrawTriangle() {
    _paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
  }
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
