import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var Personal = [
   "Math", 
 "Math"
];


List<String> list = ['Math', 'Physics', 'English'];

List<String> grade = ['A', 'B', 'D'];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//------------

  // Widget ss(BuildContext context) {
  //   List<int> text = [1,2,3,4];
  //   return Scaffold(

  //     body: Container(
  //       child: Column(
  //         children: [
  //           for ( var i in text ) Text(i.toString()) // <- here
  //         ],
  //       ),
  //     ),
  //   ); }

  ///----------

  Widget box_widget({required String tittle, Color? backgroundColor}) {
    return Container(
      width: 300,
      height: 60,
      child: Text(
        tittle,
        style: TextStyle(
            color: Colors.blueAccent, fontFamily: 'Arial', fontSize: 30, height: 1.6, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: backgroundColor),
    );
  }

  Widget _you({required String myText}) {

    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      child: Text(
        myText,
        style: TextStyle(
          fontFamily: "Arial",
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Row 1

                box_widget(tittle: "Grade Calculator"),

                // Row 2

Column(
   mainAxisAlignment: MainAxisAlignment.center ,

  children: [


     Row(  mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ _you(myText: "Math"),_you(myText: "3") ]) ,
     Row(  mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ _you(myText: "Physics"),_you(myText: "2") ]) ,
     Row(  mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ _you(myText: "Engr"),_you(myText: "1") ]) ,

       

],),
     

                box_widget(tittle: "Total GBA : 6", backgroundColor: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
