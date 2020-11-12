import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/home/parallax_scroll.dart';
import 'home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uplink Digital',
      theme: ThemeData(primaryColor: Colors.blue[900]),
      home: Home(),
    );
  }
}
