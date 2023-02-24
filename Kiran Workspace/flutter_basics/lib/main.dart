import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/text_theme.dart';
import 'package:intl/intl.dart';

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
        textTheme: TextTheme(
        headline1: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, fontFamily: 'practiceFont001'),
          subtitle1: TextStyle(fontSize: 11, fontWeight: FontWeight.normal, fontStyle: FontStyle.italic ),
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
  var emailText = TextEditingController();
  var mobNumber = TextEditingController();
  var passwordText = TextEditingController();
  callback(){
    print("You're on Call Back Function");
  }
  var selectedDate;
  @override
  Widget build(BuildContext context) {
    var arrnames = ['Kiran','Sayali','Kiya','Kiyansh','Siya','Siyansh'];
    var arrColors = [Colors.blue, Colors.grey, Colors.deepOrange, Colors.green, Colors.red, Colors.black,
      Colors.deepPurpleAccent, Colors.orange, Colors.pink];
    var todayTime = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Flutter Basics'),
        ),
        body:
      ////////// Stack ////////////////////

      Container(
        height: 300,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Positioned(
                top: 21,
                left: 21,
                child: Container(
                  height: 250,
                  width: 250,
                  color: Colors.black,
                ),
              ),
              Container(
                height: 250,
                width: 250,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      )

      ////////// CallBack Function ////////////////////
        /*
      ElevatedButton(
        onPressed: callback,
        child: Text("Click to CallBack"),
      )
        */
      ////////// Grid View Builder ////////////////////
        /*
      GridView.builder(
        itemBuilder: (context,index){
        return Container(color :arrColors[index] );
      },
      itemCount: arrColors.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11
      ),
        ),
      */

      ////////// Grid View ////////////////////
      /*
      GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
      children: [
        Container( color:arrColors[0]),
        Container( color:arrColors[1]),
        Container( color:arrColors[2]),
        Container( color:arrColors[3]),
        Container( color:arrColors[4]),
        Container( color:arrColors[5]),
        Container( color:arrColors[6]),
        Container( color:arrColors[7]),
        Container( color:arrColors[8]),
      ],
      )
      */

      ////////// Grid View Extent ////////////////////
      /*
      GridView.extent(
      maxCrossAxisExtent: 100,
      crossAxisSpacing: 11,
      mainAxisSpacing: 11,
      children: [
        Container( color:arrColors[0]),
        Container( color:arrColors[1]),
        Container( color:arrColors[2]),
        Container( color:arrColors[3]),
        Container( color:arrColors[4]),
        Container( color:arrColors[5]),
        Container( color:arrColors[6]),
        Container( color:arrColors[7]),
        Container( color:arrColors[8]),
      ],
    )
        */

      ////////// Date & Time Picker ////////////////////
      /*
      Center(
        child: Container(
          child: Column(
            children: [
              Text("Select Date", style: TextStyle(fontSize: 15),),
              ElevatedButton(onPressed: () async {
                final DateTime? datePicked = await showDatePicker(
                    context: context,
                  initialDate: selectedDate,
                  //  initialDate: DateTime.now(),
                    firstDate: DateTime(2021),
                    lastDate: DateTime(2023),

                );
                if(datePicked != null && datePicked != selectedDate){
                  setState(() {
                    selectedDate = datePicked;
                    //print('Date Selected: ${datePicked.day} ${datePicked.month} ${datePicked.year}');
                  });
                }
              }, child: Text("Show Date")
              ),
            Text("Select Time", style: TextStyle(fontSize: 15),),
            ElevatedButton(onPressed: () async {
              TimeOfDay? timePicked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial
              );
              
              if(timePicked!=null){
                print('Time Selected: ${timePicked.hour}:${timePicked.minute}');
              }
            }, child: Text("Show Time"))
            ],
          ),
        ),
      )
      */

      ////////// Get Current Date & Time ////////////////////
      /*
      Center(
        child: Container(
          height: 200,
          width: 200,
          child: Column(
            children: [
              Center(
                child: Text(" Today-\n Date: ${DateFormat('EEE, M/d/y').format(todayTime)}",
                  style: TextStyle(fontSize: 15),),  // Date Formate

                /*
                child: Text(" Today-\n Time: ${todayTime.hour}:${todayTime.minute}:${todayTime.second}\n"
                    " Date: ${todayTime.day}/${todayTime.month}/${todayTime.year}",
                  style: TextStyle(fontSize: 25),),
                */
              ),
              ElevatedButton(onPressed:(){
                setState(() {
                });
              }, child: Text('Update To Latest'))
            ],
          ),
        ),
      ) */


      ////////// User Input ////////////////////
        /*
      Center(
          child: Container(
            width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Join Us", style: TextStyle(color: Colors.blue, fontSize: 50, fontFamily: 'practiceFont001'),),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailText,
                //enabled: false,                          // For disable field
                    decoration: InputDecoration(
                      hintText: "Enter the Email ID here",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 1,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 1,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      suffixText: "User Name Exists",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye, color: Colors.deepOrange,),   //Added red eye press icon
                        onPressed: (){
                        },
                      ),
                      prefixIcon: Icon(Icons.email, color: Colors.deepOrange,)
                    ),
                  ),
                  Container(
                    height: 11,
                  ),
                  TextField(
                    keyboardType: TextInputType.phone,
                    controller: mobNumber,
                    //enabled: false,                          // For disable field
                    decoration: InputDecoration(
                        hintText: "Enter the Mobile Number here",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 1,
                          ),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 1,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        suffixText: "Number already exists",
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye, color: Colors.deepOrange,),   //Added red eye press icon
                          onPressed: (){
                          },
                        ),
                        prefixIcon: Icon(Icons.phone, color: Colors.deepOrange,)
                    ),
                  ),
                  Container(
                    height: 11,
                  ),
                  TextField(
                    controller: passwordText,
                    obscureText: true,                   // Hide the Text
                   // obscuringCharacter: "*",             // Hide the text and user mannualy i.e. *
                    decoration: InputDecoration(
                      hintText: "Enter the Password here",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            color: Colors.deepOrange
                        ),
                      ),
                        suffixText: "Password Incorrect",
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye, color: Colors.deepOrange,),   //Added red eye press icon
                          onPressed: (){
                          },
                        ),
                        prefixIcon: Icon(Icons.lock, color: Colors.deepOrange,)

                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed:(){
                          String userEmail = emailText.toString();
                          String userMob = mobNumber.text;
                          String userPassword = passwordText.text;

                          print("Email = $userEmail,Mobile Number = $userMob , Password = $userPassword");
                      },
                          child: Text(
                        'Login',
                      ),
                      ),
                    ),
                  ),
                ],
              ),
          ),
      ), */


        ////////// Theme and Style ////////////////////
        /*
        Column(
          children: [
            Text("Theme Headline 01", style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.red), ),
            Text("Theme Subtitle 01", style: Theme.of(context).textTheme.subtitle1, ),
            Text("Theme Headline 02", style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.green), ),
            Text("Theme Subtitle 02", style: Theme.of(context).textTheme.subtitle1, ),
            Text("UI_Helper 1" , style: KiranTS15(),),
            Text("UI_Helper 2" , style: KiranTS25(),),
          ],
        ) */

      ////////// Card Widget ////////////////////
      /*
        Center(child: Card(
          elevation: 15,
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Card Widget", style: TextStyle(fontSize: 25, fontFamily: 'practiceFont001'),),
        )))
        */

      ////////// Custom Font ////////////////////
        /*
      Text("Hey, I am a New Font", style: TextStyle(fontSize: 25, fontFamily: 'practiceFont001'),)
        */

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
