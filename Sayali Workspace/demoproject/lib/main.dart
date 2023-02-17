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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
        title: Text('Flutter Container'),
      ),
      //Flutter container
      /*body:Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.amber,
          child: Text("Welcome to Flutter!!"),
        ),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
      //center widget
      /*body: Center(
        child: Text("Hello World!!!",style: TextStyle(fontSize: 25),),
      )*/
      //center container with text in center
      /*body: Center(
          child: Container(
              width: 250,
              height: 100,
              color: Colors.pinkAccent,
              child: Center(child: Text('This is center container.',style: TextStyle(color: Colors.black,fontSize: 20),))
        ),
      ),*/
      //Text & widgets and it's style
      /*body: Text("Text & widgets and it's style!!!",style: TextStyle(
        fontSize: 25,
        color: Colors.teal,
        //fontWeight: FontWeight.bold,
        fontWeight: FontWeight.w900,
        backgroundColor: Colors.black26,
      ),
      ),*/
      //Text button
      /*body: TextButton(
        child: Text('Click Here!!'),
        onPressed: () {
          print('Text Button Tapped!');
        },
        onLongPress:() {
          print('Long Pressed.');
        },
      ),*/
      //Elevated Button
      /*body: ElevatedButton(
        child: Text('Elevated Button'),
        onPressed: () {
          print('Button Pressed.');
        },
      ),*/
      //Outlined Button
      /*body: OutlinedButton(
        child: Text('Outlined Button'),
        onPressed: (){
          print('Outlined Pressed');
        },
      ),*/
      //Add image in app
      body: Center(
        child: Container(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/ksiyaa.png')
        ),
      )
    );
  }
}