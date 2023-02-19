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
    var arrnames = ['Kiran','Sayali','Kiya','Kiyansh','Siya','Siyansh'];
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Flutter Basics'),
        ),
        body:
      ////////// Expanded Widget ////////////////////
      Text("Hey, I am a New Font", style: TextStyle(fontSize: 25, fontFamily: 'practiceFont001'),)


      ////////// Expanded Widget ////////////////////
        /*
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                border: Border.all(
                    width: 2,
                    color: Colors.black
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
            color: Colors.white,
              border: Border.all(
                  width: 2,
                  color: Colors.black
              ),
            ),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                border: Border.all(
                    width: 2,
                    color: Colors.black
                ),
              )

            ),

          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                    width: 2,
                    color: Colors.black
                ),
              ),
            ),
          ),
        ],
      ) */

      ////////// Container Decoration ////////////////////
        /*
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.orangeAccent,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              //borderRadius: BorderRadius.circular(21)
                borderRadius: BorderRadius.only(topLeft:Radius.circular(15), bottomRight:Radius.circular(15)),
              border: Border.all(
                width: 2,
                color: Colors.green
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  color: Colors.white38,
                  spreadRadius: 7
                ),
              ],
              //shape: BoxShape.circle
            ),
          ),
        ),
      ) */

      ////////// Circle Avatar ////////////////////
        /*
       Padding(
         padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
         child: CircleAvatar(
            child: Container(
              height: 40,
              width: 40,
              child: Column(
                children: [
                    Container(
                      height: 40,
                      width: 40,
                        child: Image.asset('assets/images/boy.png'),
                       ),
                  //Text("Boy", style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            backgroundColor: Colors.black87,
            maxRadius: 30,
          ),
       ), */

      ////////// List Tile ////////////////////
        /*
      ListView.separated(itemBuilder: (context, index){
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrnames[index]),
          subtitle: Text('Number'),
          trailing: Icon(Icons.add),
        );
      }, separatorBuilder: (context , index){
        return Divider(height: 30,thickness: 5,);
      },
          itemCount: arrnames.length,
      ) */

      ////////// List View Separated ////////////////////
        /*
        ListView.separated(itemBuilder: (context, index){
        return(Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrnames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrnames[index], style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(arrnames[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ],
        ));
        },
          itemCount: arrnames.length,
          separatorBuilder: (context, index) {
          return Divider(height: 50,thickness: 4,);
          },
        ) */

        ////////// List View Builder ////////////////////
        /*
        ListView.builder(itemBuilder: (context, index){
        return(Text(arrnames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)));
        },
          itemCount: arrnames.length,
          itemExtent: 100,

        ) */
        
      ////////// List View ////////////////////
        /*
      ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("One", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Two", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Three", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Four", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Five", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          )
        ],
      ) */

        ////////// Padding and Margin ////////////////////
        /*
        Container(
          color: Colors.amber,
          margin: EdgeInsets.all(11),
          child: Padding(
            padding: EdgeInsets.only(top: 20,bottom:30 ,left:25 ,right:30 ),
            child: Text("Padding and Mrgin ", style: TextStyle(fontSize:25), selectionColor:Colors.black87),

          ),
        )
          */
        ////////// Scroll View ////////////////////
        /*
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 11),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Center(
                              child: Container(
                                height: 200,
                                width: 200,
                                color: Colors.amber,
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 200,
                                width: 200,
                                color: Colors.blueAccent,
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 200,
                                width: 200,
                                color: Colors.deepOrangeAccent,
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 200,
                                width: 200,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 200,
                                width: 200,
                                color: Colors.amber,
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 200,
                                width: 200,
                                color: Colors.blueAccent,
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 200,
                                width: 200,
                                color: Colors.deepOrangeAccent,
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 200,
                                width: 200,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      color: Colors.amber,
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )*/

      ////////// InkWell ////////////////////
        /*
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
        ) */

      ////////// Row ////////////////////
      /*
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
