import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget{
  var introToWelcome;
  WelcomePage(this.introToWelcome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Welcome Page"),
      ),
      body:
      Container(
        color: Colors.grey,
      child: Center(
        child: Container(
          child: Text("Welcome, $introToWelcome",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
        ),
      ),
      ),
    );
  }

}