import 'package:flutter/material.dart';

class Course {
  final int id;
  final String title, image;
  final Color color;

  Course({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<Course> courses = [
  Course(
    id: 1,
    title: "CompTIA A+ & N+",
    image: "assets/images/comptia.png",
    color: Color(0xFFEF5350),
  ),
  Course(
    id: 2,
    title: "CCNA & CCNP",
    image: "assets/images/cisco.png",
    color: Color(0xFF90CAF9),
  ),
  Course(
    id: 3,
    title: "Microsoft (MCP)",
    image: "assets/images/microsoft-certified.png",
    color: Color(0xFF07489C),
  ),
  Course(
    id: 4,
    title: "Python Programming",
    image: "assets/images/python.png",
    color: Color(0xFFFFE0E0),
  ),
  // Course(
  //   id: 5,
  //   title: "Data Science",
  //   image: "assets/images/datascience.png",
  //   color: Color(0xFFFFE0E0),
  // ),
];

class Course2 {
  final int id;
  final String title, image;
  final Color color;

  Course2({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<Course2> courses2 = [
  Course2(
    id: 1,
    title: "Data Science",
    image: "assets/images/datascience.png",
    color: Color(0xFF07489C),
    
  ),
  Course2(
    id: 2,
    title: "Cybersecurity",
    image: "assets/images/cyberimage.png",
    color: Color(0xFFF44336),
  ),
  Course2(
    id: 3,
    title: "Leadership Course",
    image: "assets/images/leadership.png",
    color: Color(0xFF9FA8DA),
    
  ),
  Course2(
    id: 4,
    title: "IoT",
    image: "assets/images/iot.png",
    color: Color(0xFFFCE4EC),
  ),
  // Course(
  //   id: 5,
  //   title: "Data Science",
  //   image: "assets/images/datascience.png",
  //   color: Color(0xFFFFE0E0),
  // ),
];
