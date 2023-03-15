import 'package:demo_project/WelcomePage.dart';
import 'package:demo_project/main.dart';
import 'package:flutter/material.dart';

import 'BMICalculatorPage.dart';

class IntroPage extends StatelessWidget{
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro"),
      ),
      body:
      Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Welcome", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.purple),),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: nameController,
              ),
              SizedBox(
                height: 11,
              ),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> WelcomePage(nameController.text.toString()),
                      ),
                    );
                  },
                  child: Text("Go to Welcome Page")),
              SizedBox(
                height: 11,
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> MyHomePage(),
                        ),
                    );
                  },
                  child: Text("Switch to Counter & Simple Arithmatic")),

              SizedBox(
                height: 11,
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> BMICalculatorPage(),
                      ),
                    );
                  },
                  child: Text("Check your BMI")),
            ],
          ),
        ),
      ),
    );
  }

}