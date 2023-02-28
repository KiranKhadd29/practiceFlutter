//import 'package:demoproject/ui_helper/util.dart';
import 'package:demoproject/ui_helper/util.dart';
import 'package:demoproject/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:intl/intl.dart';

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
        //primarySwatch: Colors.lightGreen,
        /*textTheme: TextTheme(
            displayMedium: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,),
            titleSmall:  TextStyle(fontSize: 11,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
        ),*/
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: MyHomePage(),
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
  /*callback() {
    print('Clicked!!!');
  }*/
  //var emailText = TextEditingController();
  //var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    /*var arrColors =[Colors.redAccent,
      Colors.orangeAccent,
      Colors.grey,
      Colors.blueAccent,
      Colors.pinkAccent,
      Colors.greenAccent,
      Colors.purpleAccent,
      Colors.cyanAccent,
    ];*/
    //var arrNames = ['Sayali','Kiran','Kiya','Siya','Kiyansh','Siyansh','Kiyara','Kiyasa'];
    //var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Font awesome Icon'),
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
      /*body: Column(
        children: [
          Text('Styles and Themes 1',style: mTextStyle2(textColor: Colors.orange)),
          Text('Styles and Themes 2',style: Theme.of(context).textTheme.titleSmall),
          Text('Styles and Themes 3',style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.deepOrange)),
          Text('Styles and Themes 4',style: mTextStyle1()),
          Text('Styles and Themes 5',style: TextStyle(fontSize: 31,fontWeight: FontWeight.w300,fontStyle: FontStyle.normal,color: Colors.lightBlue),),
        ],
      ),*/
      //Card widget
      /*body: Center(
        child: Card(
          shadowColor: Colors.orange,
          elevation: 12,
            child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Card Widget',style: TextStyle(fontSize: 21),),
            )),
      ),*/
      //get current date and time
      /*body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Time: ${time.hour}:${time.minute}:${time.second}',style: TextStyle(fontSize: 25),),
              ElevatedButton(onPressed: () {
                setState(() {

                });
              }, child: Text('Current Time'))
            ],
          ),
        ),
        //Dateformat patterns

      ),*/
      //format date
      /*body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text('Current Time: ${DateFormat('Hms').format(time)}',style: TextStyle(fontSize: 25),),
              //Text('Current Time: ${DateFormat('jms').format(time)}',style: TextStyle(fontSize: 25),),
              //Text('Current Time: ${DateFormat('yMMMMd').format(time)}',style: TextStyle(fontSize: 25),),
              //Text('Current Time: ${DateFormat('yMMMM').format(time)}',style: TextStyle(fontSize: 25),),
              //Text('Current Time: ${DateFormat('QQQQ').format(time)}',style: TextStyle(fontSize: 25),),
              Text('Current Time: ${DateFormat('yMMMMEEEEd').format(time)}',style: TextStyle(fontSize: 25),),
              ElevatedButton(onPressed: () {
                setState(() {

                });
              }, child: Text('Current Time'))
            ],
          ),
        ),
        //Dateformat patterns
      ),*/
      //date picker
      /*body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Date',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2023),
                    lastDate: DateTime(2025)
                );
                if(datePicked!= null){
                  print('Date selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                }
            }, child: Text('Show')),
            ElevatedButton(onPressed: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input
              );
              if(pickedTime!=null){
                print('Time selected: ${pickedTime.hour}:${pickedTime.minute}');
              }
            }, child: Text('Selected Time'))
          ],
        ),
      ),*/
      //Adding text input widgets(textfield)
      /*body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text('LogIn'),
                TextField(
                  controller: emailText,
                   //enabled: false,
                   decoration: InputDecoration(
                     hintText: 'Enter E-mail here..',
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: BorderSide(
                             color: Colors.deepOrange,
                           width: 2,
                         )
                     ),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(11),
                         borderSide: BorderSide(
                           color: Colors.green,
                           width: 2,
                         )
                     ),
                     disabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(11),
                           borderSide: BorderSide(
                             color: Colors.black26,
                             width: 2,
                           )
                       ),
                     //suffixText: "UserName exists" ,
                     suffixIcon: IconButton(
                       icon: Icon(Icons.remove_red_eye,color: Colors.orange,),
                       onPressed: (){

                       },
                     ),
                     prefixIcon: Icon(
                       Icons.email,color: Colors.orange,
                     )
                   ),
                ),
                Container(height: 11,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: passText,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter Password here..',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Colors.deepOrange
                          )
                      )
                  ),
                ),
                ElevatedButton(onPressed: (){
                  String uEmail = emailText.text.toString();
                  String uPass = passText.text;

                  print("Email: $uEmail, Pass: $uPass");
                }, child: Text('Login'))
              ],
            ),
          )
      ),*/
      //Grid View .count and .extent
      /*body: Column(
        children: [
          Container(
            height: 200,
            child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 11,
              crossAxisSpacing: 11,
              children: [
                Container(color: arrColors[0],),
                Container(color: arrColors[1],),
                Container(color: arrColors[2],),
                Container(color: arrColors[3],),
                Container(color: arrColors[4],),
                Container(color: arrColors[5],),
                Container(color: arrColors[6],),
                Container(color: arrColors[7],),
              ],
            ),
          ),
          Container(
            height: 100,
          ),
          Container(
            height: 200,
            child: GridView.extent(
              maxCrossAxisExtent: 50,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
            children: [
              Container(color: arrColors[0],),
              Container(color: arrColors[1],),
              Container(color: arrColors[2],),
              Container(color: arrColors[3],),
              Container(color: arrColors[4],),
              Container(color: arrColors[5],),
              Container(color: arrColors[6],),
              Container(color: arrColors[7],),
            ],),
          )
        ],
      ),*/
      //Grid View .builder
      /*body: GridView.builder(
        /*gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
         ),*/
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
        ),
        itemBuilder: (context, index) {
            return Container(color: arrColors[index],);
            },
        itemCount: arrColors.length,
      ),*/
      //callback function
      /*body: ElevatedButton(
        child: Text('Click'),
        onPressed: callback,
      ),*/
      //custom widgets
      /*body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 70,
              child: RoundedButton(
                btnName: 'Play',
                icon: Icon(Icons.play_arrow),
                bgColor: Colors.indigo,
                callback: () {
                  print('Playing!!!');
                },
                textStyle: mTextStyle2(),
              ),
            ),
            Container(
              height: 50,
            ),
            Container(
              width: 150,
              height: 70,
              child: RoundedButton(
                btnName: 'Press',
                //icon: Icon(Icons.login),
                bgColor: Colors.orange,
                callback: () {
                  print('Pressed!!!');
                },
                textStyle: mTextStyle2(),
              ),
            ),
          ],
        ),
      )
        */
      //Stack widget
      /*body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blueGrey,
            ),
            Positioned(
              left: 21,
              top: 21,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),*/
      //Icon widget
      /*body: Center(
        child: Icon(
          Icons.play_circle_outline,
          size: 100,
          color: Colors.green,
        ),
      ),*/
      //Font awesome icon
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_circle_outline,
              size: 80,
              color: Colors.green,
            ),
            SizedBox(width: 11,),
            FaIcon(FontAwesomeIcons.googlePay,size: 100,color: Colors.orange,)
          ],
        ),
      ),
    );
  }
}

//Splitting the app into widgets
/*

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom widget'),
      ),
        body: Container(
          child: Column(
            children: [
              CatItems(),
              Contact(),
              SubCatItems(),
              BottomMenu()
            ],
          ),
        )
    );
  }
}

class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(11.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
        ), itemCount: 10, scrollDirection: Axis.horizontal),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title: Text('Name'),
            subtitle: Text('Mob No'),
            trailing: Icon(Icons.delete),
          ),
        ),),
      ),
    );
  }
}

class SubCatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ), itemCount: 10, scrollDirection: Axis.horizontal,),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
          ],),
      ),
    );
  }
}

 */