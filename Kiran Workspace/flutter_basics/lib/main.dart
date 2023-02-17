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

      ////////// InkWell ////////////////////
        InkWell(
          onLongPress: (){
            print("Long Pressed on Container");
          },
          onDoubleTap: (){
            print("Double tapped on Container");
          },
          onTap: (){
            print("Double tapped on Container");
          },
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: Center(
                child: InkWell(
                  onTap: (){
                    print("This is Text using InkWell");
                  },
                  child: Text(
                    "Click Here",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),

                  )
                )
                
            ),
            ),
          ),
        )


            /*
      ////////// Row ////////////////////
      Container(
        height: 300,
        /*
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.spaceAround,
          children: [
            Text('R1, style: TextStyle(fontSize: 25),),
            Text('R2 style: TextStyle(fontSize: 25),),
            Text('R3 style: TextStyle(fontSize: 25),),
            Text('R4 style: TextStyle(fontSize: 25),),
            Text('R5 style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){

            },child: Text('click')

            )
          ],
        ), */
        ////////// Column ////////////////////

        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ////////// Row inside Column ////////////////////
            Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('cR1', style: TextStyle(fontSize: 25),),
              Text('cR2', style: TextStyle(fontSize: 25),),
              Text('cR3' ,style: TextStyle(fontSize: 25),),
              Text('cR4' ,style: TextStyle(fontSize: 25),),
              Text('cR5' ,style: TextStyle(fontSize: 25),),
        ],
      ),

            Text('C1', style: TextStyle(fontSize: 25),),
            Text('C2', style: TextStyle(fontSize: 25),),
            Text('C3', style: TextStyle(fontSize: 25),),
            Text('C4', style: TextStyle(fontSize: 25),),
            Text('C5', style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){

            },child: Text('click')

            )
          ],
        ),
      ) */

        ////////// Images ////////////////////
        /*Center(
            child:Container(
              width: 500,
              height: 500,
              child: Image.asset('assets/images/kiyalogosmall.png')),
            )*/


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
