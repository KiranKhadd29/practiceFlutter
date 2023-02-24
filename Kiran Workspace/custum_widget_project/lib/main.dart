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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  /*var arrColors = [Colors.blue, Colors.grey, Colors.deepOrange, Colors.green, Colors.red, Colors.black,
    Colors.deepPurpleAccent, Colors.orange, Colors.pink];
  var arrnames = ['Kiran','Sayali','Kiya','Kiyansh','Siya','Siyansh']; */

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Custom Widget"),
      ),
      body:
      Container(
        child: Column(
          children: [
            //CatItems(),
            Contacts()
            //SubItemView2(),
            //BottomMenu()
          ],
        ),
      ),
    );
  }
}
/*class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.grey,
        child: ListView.builder(itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
} */
class Contacts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orangeAccent,
        child: ListView.builder(itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                title: Text("Name"),
                subtitle: Text("Mobile No"),
                trailing: Icon(Icons.delete),
              ),
            ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
/* class SubCatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.brown,
        child: ListView.builder(itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.teal
                ),
              ),
            ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
} */
/*class BottomMenu extends StatelessWidget{
  var arrColors = [Colors.blue, Colors.grey, Colors.deepOrange, Colors.green, Colors.red, Colors.black,
    Colors.deepPurpleAccent, Colors.orange, Colors.pink];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.amberAccent,
        child: GridView.builder(
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
      ),
    );
  }
} */
/*class SubItemView2 extends StatelessWidget{
  var arrnames = ['Kiran','Sayali','Kiya','Kiyansh','Siya','Siyansh'];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
          color: Colors.black,
          child: ListView.separated(itemBuilder: (context, index){
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
          )
      ),
    );
  }

} */
