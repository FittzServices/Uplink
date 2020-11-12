import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/home/responsive_widget.dart';

class BlurImage extends StatefulWidget {
  @override
  _BlurImageState createState() => _BlurImageState();
}

class _BlurImageState extends State<BlurImage> {
  
   bool isCurrentlyTouching = false;

  void handleTouch(bool isTouching) {
    setState(() {
      isCurrentlyTouching = isTouching;
    });
    // some other functionality on touch
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
          largeScreen: Container(
          height: ResponsiveWidget.isLargeScreen(context)?MediaQuery.of(context).size.height/2:MediaQuery.of(context).size.height*1.4,
       width: MediaQuery.of(context).size.width,
          decoration: new BoxDecoration(
            color: const Color(0xff7c94b6),
            image: new DecorationImage(
              image: new ExactAssetImage('assets/images/business1.jpeg'),
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.8), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: ResponsiveWidget.isLargeScreen(context) ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.height/2.5,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.0),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                        offset: new Offset(0.0, 3.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 50,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Address',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "12, Western Reservoir Road, Opp. Peculiar Grace Supermarket,Olorunsogo,Geri Alimi Area, Ilorin. Kwara State. Nigeria.",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(5.0),
                        //   child: Text(
                        //     " ",
                        //     style: TextStyle(fontSize: 15, color: Colors.grey),
                        //     textAlign: TextAlign.center,
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.height/2.5,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.0),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                        offset: new Offset(0.0, 3.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          size: 50,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Email Address',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "info@uplinx.com.ng",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "timothy@uplinx.com.ng",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                   height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.height/2.5,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.0),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                        offset: new Offset(0.0, 3.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          size: 50,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Phone',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Telephone - 09077669153",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Whatsapp only - 08097352014",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ):Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                   height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.height/2.5,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.0),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                        offset: new Offset(0.0, 3.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 50,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Address',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "12, Western Reservoir Road, Opp. Peculiar Grace Supermarket,Olorunsogo,Geri Alimi Area, Ilorin. Kwara State. Nigeria.",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(5.0),
                        //   child: Text(
                        //     "Ilorin, Kwara State, Nigeria",
                        //     style: TextStyle(fontSize: 15, color: Colors.grey),
                        //     textAlign: TextAlign.center,
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
                Container(
                   height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.height/2.5,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.0),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                        offset: new Offset(0.0, 3.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          size: 50,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Email Address',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "info@uplinx.com.ng",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "timothy@uplinx.com.ng",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                   height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.height/2.5,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.0),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                        offset: new Offset(0.0, 3.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          size: 50,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Phone',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Telephone - 09077669153",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Whatsapp only - 08097352014",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )

  
          ),
    );
  }
}
