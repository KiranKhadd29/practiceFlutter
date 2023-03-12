import 'package:demo_project/IntroPage.dart';
import 'package:demo_project/SplashScreen.dart';
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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

/*class MyHomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();

  }
}

  class MyHomeState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
      return Container();

    }
  } */

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _count = 0;
  var _controller1 = TextEditingController();
  var _controller2 = TextEditingController();
  var _num1;
  var _num2;
  var _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter and Calculation App"),
      ),

      body:
      Wrap(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text("Welcome, $nameFromIntro",style: TextStyle(fontSize: 20, color: Colors.purple),),
              Text("Counter: $_count", style: TextStyle(fontSize: 35),),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      _count++;
                      //_count= _count + 1;
                      //_count +=1 ;
                    });
                  },
                  child: Text("Increment Count")
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.purpleAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Simple Arithmatic Operation",style: TextStyle(fontSize: 35, color: Colors.white),),
                            TextField(
                              keyboardType: TextInputType.number,
                              controller: _controller1,
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              controller: _controller2,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Wrap(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(onPressed: (){
                                      _num1 = int.parse(_controller1.text.toString());
                                      _num2 = int.parse(_controller2.text.toString());
                                      var sum = (_num1+_num2);
                                      _result = ("The Addition of $_num1 and $_num2 is $sum");
                                      setState(() {});
                                    },
                                        child: Text("Addition")),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(onPressed: (){
                                      _num1 = int.parse(_controller1.text.toString());
                                      _num2 = int.parse(_controller2.text.toString());
                                      var sub = (_num1-_num2);
                                      _result = ("The Substarction of $_num1 and $_num2 is $sub");
                                      setState(() {});
                                    },
                                      child: Text("Substarction"),),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(onPressed: (){
                                      _num1 = int.parse(_controller1.text.toString());
                                      _num2 = int.parse(_controller2.text.toString());
                                      var mul = (_num1*_num2);
                                      _result = ("The Multiplication of $_num1 and $_num2 is ${mul.toStringAsFixed(3)}");
                                      setState(() {});
                                    },
                                      child: Text("Multiplication"),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(onPressed: (){
                                      _num1 = int.parse(_controller1.text.toString());
                                      _num2 = int.parse(_controller2.text.toString());
                                      var div = (_num1/_num2);
                                      _result = ("The Division of $_num1 and $_num2 is ${div.toStringAsFixed(3)}");
                                      setState(() {});
                                    },
                                      child: Text("Division"),),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Result: $_result",style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.amberAccent
                              ), ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],

      )
      ,

    );
  }
}


