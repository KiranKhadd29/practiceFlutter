import 'package:demoproject/ui_helper/util.dart';
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
        primarySwatch: Colors.lightGreen,
        textTheme: TextTheme(
            displayMedium: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,),
            titleSmall:  TextStyle(fontSize: 11,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
        ),
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
    //var arrNames = ['Sayali','Kiran','Kiya','Siya','Kiyansh','Siyansh','Kiyara','Kiyasa'];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Styles and Themes'),
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
      /*body: ListView.separated(itemBuilder: (context, index) {
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
      ),*/
      //List Tile in ListView
      /*body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          //leading: Text('${index+1}'),
          title: Text(arrNames[index]),
          subtitle: Text('Number'),
          trailing: Icon(Icons.add_box_outlined),
        );
      },
        itemCount: arrNames.length,
        //scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return Divider(height: 50,thickness: 4,);
        },
        //reverse: true,
      ),*/
      //Circle avatar
      /*body: CircleAvatar(
        child: Container(
          width: 50,
          height: 50,
          child: Column(
            children: [
              Container(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/images/boy.png')),
              Text('Name',style: TextStyle(color: Colors.black),)
            ],
          ),
        ),
        //child: Text('Name',style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
        //backgroundImage: AssetImage('assets/images/boy.png'),
        backgroundColor: Colors.green,
        //radius: 100,
        //minRadius: 50,
        maxRadius: 50,
      ),*/
      //Container Decoration
      /*body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Center(
          child: Container(
            width: 200,
            height: 150,
            //color: Colors.greenAccent,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              //borderRadius: BorderRadius.circular(50)
              borderRadius: BorderRadius.only(topLeft:Radius.circular(50),bottomRight: Radius.circular(50)),
              //borderRadius: BorderRadius.all(Radius.circular(21))
              border: Border.all(
                width: 2,
                color: Colors.black
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 21,
                  color: Colors.white,
                  spreadRadius:11
                )
              ],
              //shape: BoxShape.circle
            ),
          ),
        ),
      ),*/
      //Expanded widget for row
      /*body: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Container(
                width: 50,
                height: 100,
                color: Colors.green,
            ),
          ),
        ],
      ),*/
      //Expanded widget for column
      /*body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //width: 150,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              //width: 150,
              height: 100,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              //width: 150,
              height: 100,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Container(
              //width: 150,
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),*/
      //padding
      /*body: Padding(
        //padding: EdgeInsets.only(top: 11,left: 30),
        padding: EdgeInsets.all(30),
        child: Text("Margin and Padding",style: TextStyle(fontSize: 25),),
      ),*/
      //Margin + padding
      /*body: Container(
        color: Colors.blueGrey,
          margin: EdgeInsets.all(30),
          child: Padding(
            padding: EdgeInsets.only(top: 30,left: 20),
            child: Text("Margin and Padding",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
          )
      ),*/
      //Custom fonts
      /*body: Text(
        'Sayali k k',style: TextStyle(fontFamily: 'FontPlayfairDisplay',fontWeight: FontWeight.bold,fontSize: 30),
      ),*/
      //styles and themes
      body: Column(
        children: [
          Text('Styles and Themes 1',style: mTextStyle2(textColor: Colors.orange)),
          Text('Styles and Themes 2',style: Theme.of(context).textTheme.titleSmall),
          Text('Styles and Themes 3',style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.deepOrange)),
          Text('Styles and Themes 4',style: mTextStyle1()),
          Text('Styles and Themes 5',style: TextStyle(fontSize: 31,fontWeight: FontWeight.w300,fontStyle: FontStyle.normal,color: Colors.lightBlue),),
        ],
      ),
    );
  }
}