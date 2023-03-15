import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
  }

class _BMICalculatorPageState extends State<BMICalculatorPage> {

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inchController = TextEditingController();
  var result="";
  var bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Body Mass Index"),
      ),

      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("BMI", style: TextStyle(fontSize: 35, color: Colors.purple, fontWeight: FontWeight.bold),),
                SizedBox(height: 11,),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text("Enter your weight(KG)"),
                    prefixIcon: Icon(Icons.line_weight_outlined),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text("Enter your height(Foot)"),
                    prefixIcon: Icon(Icons.height_outlined),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: inchController,
                  decoration: InputDecoration(
                    label: Text("Enter your height(Inch)"),
                    prefixIcon: Icon(Icons.height_outlined),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                ElevatedButton(
                    onPressed: ()
                     {
                       var wt = wtController.text.toString();
                       var ft = ftController.text.toString();
                       var inch = inchController.text.toString();

                       if (wt!="" && ft!="" && inch!="")
                       {
                         //BMI Calculation
                         var iWt = int.parse(wt);
                         var iFt = int.parse(ft);
                         var iInch = int.parse(inch);

                         var totalInch = (iFt*12)+iInch;
                         var totalCm = totalInch * 2.54;
                         var totalM = totalCm/100;

                         var bmi = iWt/(totalM * totalM);
                         var msg="";

                         if (bmi>25){
                           msg="You are Overweight!!!";
                           bgColor= Colors.red.shade200;
                         }
                         else if (bmi>25){
                           msg="You are Underweight!!!";
                           bgColor= Colors.orange.shade200;
                         }
                         else {
                           msg="You are Healthy";
                           bgColor= Colors.green.shade200;
                         }

                         setState(() {
                           result = "$msg \n Your BMI: ${bmi.toStringAsFixed(3)}";
                         });

                       }
                       else{
                         setState(() {
                           result = "All Fields are required*";
                         });
                       }
                     },
                    child: Text("Calculate")),
                SizedBox(height: 11,),
                Text(result, style: TextStyle(fontSize: 20),),




              ],
            ),
          ),
        ),
      ),
    );

  }
}
  

