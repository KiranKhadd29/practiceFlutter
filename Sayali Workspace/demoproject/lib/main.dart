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
    var arrNames = ['Sayali','Kiran','Kiya','Siya','Kiyansh'];
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
      /*body: Center(
        child: Container(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/ksiyaa.png')
        ),
      )*/
      //Column
      /*body: Container(
        //width: 300,
        height: 300,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /*Column(
                  children: [
                    ElevatedButton(onPressed: (){

                    }, child: Text('Click Me')),
                    ElevatedButton(onPressed: (){

                    }, child: Text('Click Me'))
                  ],
                ),*/
                Text("A1",style: TextStyle(fontSize: 30),),
                Text("B1",style: TextStyle(fontSize: 30),),
                Text("C1",style: TextStyle(fontSize: 30),),
                Text("D1",style: TextStyle(fontSize: 30),),
                Text("E1",style: TextStyle(fontSize: 30),),
              ],
            ),
            Text("A",style: TextStyle(fontSize: 30),),
            Text("B",style: TextStyle(fontSize: 30),),
            Text("C",style: TextStyle(fontSize: 30),),
            Text("D",style: TextStyle(fontSize: 30),),
            Text("E",style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){

            }, child: Text('Click'))
          ],
        ),
      ),*/
      //Rows
      /*body: Container(
        height: 300,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("A",style: TextStyle(fontSize: 30),),
            Text("B",style: TextStyle(fontSize: 30),),
            Text("C",style: TextStyle(fontSize: 30),),
            Text("D",style: TextStyle(fontSize: 30),),
            Text("E",style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){

              }, child: Text('Click'))
          ],
        ),
      ),*/
      //Inkwell
      /*body: Center(
        child: InkWell(
          onTap: () {
            print('Tapped');
          },
          onLongPress: () {
            print('Long Pressed');
          },
          onDoubleTap: () {
            print('Double Pressed');
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.cyanAccent,
            child: Center(
                child: InkWell(
                  onTap: () {
                    print('Clicked on text');
                  },
                    child: Text(
                      'Click here',
                      style: TextStyle(
                          fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black
                          ),
                    )
                )
            ),
          ),
        ),
      ),*/
      //scrollview
      /*body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 11),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.lightGreen,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.teal,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.greenAccent,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.purpleAccent,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.cyan,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.pinkAccent,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.cyanAccent,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.redAccent,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.teal,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.greenAccent,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.purpleAccent,
              )
            ],
          ),
        ),
      ),*/
      //Listview
      /*body: Center(
        child: ListView(
          //scrollDirection: Axis.horizontal,
          //reverse: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Sayali',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Kiran',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Kiya',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Kiyansh',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Siya',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Siyansh',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),*/
      //Listview.Builder
      /*body: ListView.builder(itemBuilder: (context, index) {
        return Text(arrNames[index],style: TextStyle(fontSize: 20, fontWeight:  FontWeight.bold),);
      },
        itemCount: arrNames.length,
        itemExtent: 200,
        scrollDirection: Axis.horizontal,
        //reverse: true,
      ),*/
      //Listview.Separated
      body: ListView.separated(itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(arrNames[index],style: TextStyle(fontSize: 30, fontWeight:  FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index],style: TextStyle(fontSize: 20, fontWeight:  FontWeight.bold),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrNames[index],style: TextStyle(fontSize: 20, fontWeight:  FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrNames[index],style: TextStyle(fontSize: 10, fontWeight:  FontWeight.bold),),
            )
          ],
        );
      },
        itemCount: arrNames.length,
        //scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return Divider(height: 200,thickness: 1,);
        },
        //reverse: true,
      ),
    );
  }
}