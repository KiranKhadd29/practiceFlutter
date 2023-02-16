import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basics Concepts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Flutter Basics'),
        ),
        body:
        ////////// Images ////////////////////
        Center(
            child:Container(
              width: 500,
              height: 500,
              child: Image.asset('assets/images/kiyalogosmall.png')),
            )


        ////////// Buttons ////////////////////
        /*TextButton(
          child: Text('Click Here'),
          onPressed: (){
            print('User taped the Button');
          },
          onLongPress: (){
            print('User Long pressed the Button');
          },
        )*/
      /*ElevatedButton(
          child: Text("I'm Elevated Button"),
          onPressed: (){
            print('User taped the Ele-Button');
          },
        )*/
        /*OutlinedButton(
          child: Text("I'm Outlined Button"),
          onPressed: (){
            print('User taped the O-Button');
          },
          )*/


      ////////// Text Widget ////////////////////
        /*Text("Hi, I'm a Text Widget",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black87,
              fontWeight: FontWeight.w700,
                backgroundColor: Colors.amberAccent,
            ) */
      ////////// Center widget and Container Widget ////////////////////
           /* Center(
                child: Container(
                    width: 400,
                    height: 300,
                    color: Colors.grey,
                    child: Center(
                      child: Text('This is Text Widget of Flutter',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                          backgroundColor: Colors.amberAccent)
                    )))) */
        );
  }
}
