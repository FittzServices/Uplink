import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Footer(
      child: Container(
        color: Colors.blue[900],
        height: 1000,
        child: Column(
          children: [
            Container(
              height: 960,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 300,
                    width: 400,
                    child: Column(
                      children: [
                        Text(
                          '|About Us',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Uplinx Digital Institute – We are a fast-growing capacity development organization in Nigeria. We develop capacity in the area of Information Technology, Solar Power System, Personal Development and Leadership. We work with organizations and individual to achieving lofty goals of their dream. We are a growth partner to our highly esteemed clients. Any deal with us is a promise of satisfaction.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white70,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 400,
                    alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                                '|Training Services',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                        SizedBox(height: 20),
                            // mainAxisAlignment: MainAxisAlignment.start,
                          
                              Text(
                                'Individual Training',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white70,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            
                          SizedBox(height: 25),
                          
                              Text(
                                'Corporate Training',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white70,
                                  letterSpacing: 1.2,
                                ),
                              ),
                           
                          SizedBox(height: 25),
                          
                              Text(
                                'Online Training',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white70,
                                  letterSpacing: 1.2,
                                ),
                              ),
                           
                          SizedBox(height: 25),
                         
                              Text(
                                'Exams',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white70,
                                  letterSpacing: 1.2,
                                ),
                              ),
                           
                        ],
                      ),
                  
                  ),
                  Container(
                    height: 300,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '|Contact info',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Head Office Location:',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      color: Colors.red,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      '12, Western Reservoir Road,\nOpp. Peculiar Grace Supermarket,\nOlorunsogo, Geri Alimi Area, \nIlorin. Kwara State. Nigeria',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.white70,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone_iphone,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    'Mobile:+234 9077669153',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.white70,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.email,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    'Email:info@uplinx.com.ng',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.white70,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 40,
              color: Colors.black,
              // width: MediaQuery.of(context).size.width,
              child: Center(
                child: new InkWell(
                  child: Text(
                    'Copyright © 2020 M.A.A. All Rights Reserved',
                    style: TextStyle(
                        color: Colors.white60, fontStyle: FontStyle.italic),
                  ),
                  onTap: () {
                    launch(
                        "https://www.linkedin.com/in/majeed-adegboye-47189142/");
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
