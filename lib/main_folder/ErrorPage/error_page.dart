import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                body: Center(
                  
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Text('Oops!',
                          style: TextStyle(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900]),),
                        SizedBox(height: 10,),
                      Text(
                        '404 - PAGE NOT FOUND',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Page you are looking for might have been removed \n or its is temporarily unavailable',
                        textAlign: TextAlign.center,
                      ),
                  ],
                ),
                    )),
              );
  }
}