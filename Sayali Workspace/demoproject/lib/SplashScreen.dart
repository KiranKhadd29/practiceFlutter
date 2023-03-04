import 'dart:async';

import 'package:demoproject/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(title: 'Flutter Demo Home Page')
          )
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: RichText(
            text: TextSpan(
                style: TextStyle(color: Colors.grey,fontSize: 21),
                children: <TextSpan>[
                  TextSpan(text: 'K',style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontFamily: 'FontPlayfairDisplay'
                  )),
                  TextSpan(text: 'S',style: TextStyle(
                      fontSize: 100,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'FontPlayfairDisplay'
                  )),
                  TextSpan(text: 'iyaa',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white,
                      //fontStyle: FontStyle.italic,
                      fontFamily: 'FontPlayfairDisplay'
                  )),
                  TextSpan(text: ' Technology',style: TextStyle(
                    //fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blueAccent,
                      //fontStyle: FontStyle.italic,
                      fontFamily: 'FontPlayfairDisplay'
                  ))
                ]
            ),
          ),
        ),
      ),
    );
  }
}