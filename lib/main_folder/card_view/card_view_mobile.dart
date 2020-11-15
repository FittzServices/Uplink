import 'package:flutter/material.dart';
import 'package:uplink_tech_hub/main_folder/centered_view/centered_view.dart';

class CardViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Container(
        height:1000 ,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 300,
                width: 300,
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
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Icon(
                      Icons.people,
                      size: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Who We Are',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                      child: Text(
                        'We are a fast-growing capacity development organization in Nigeria. We develop capacity in the area of Information Technology, Solar Power System, Personal Development and Leadership.',
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Center(
                child: Container(
                  height: 300,
                  width: 300,
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
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Icon(
                        Icons.settings,
                        size: 100,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Our Mission',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                        child: Text(
                          'We improve capacity of target customer in the simplest approach, within shortest time possible using appropriate thought-through technology ',
                          style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 300,
                width: 300,
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
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Icon(
                      Icons.verified_user,
                      size: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Our Vision',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                      child: Text(
                        'To become number one (1) workforce and capacity development organization in Nigeria by 2025 ',
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
