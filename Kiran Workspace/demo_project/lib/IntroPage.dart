import 'package:demo_project/main.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro"),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.purple),),
            SizedBox(
              height: 11,
              width: 11,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> MyHomePage(),
                      ),
                  );
                },
                child: Text("Switch to Counter & Simple Arithmatic")),
          ],
        ),
      ),
    );
  }

}