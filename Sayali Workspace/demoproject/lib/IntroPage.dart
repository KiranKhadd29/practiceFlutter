import 'package:demoproject/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome', style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 11,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: 'Flutter Demo Home Page'),
              ));
            }, child: Text('Next'))
          ],
        ),
      ),
    );
  }
}