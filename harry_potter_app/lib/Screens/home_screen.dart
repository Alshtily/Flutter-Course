
import 'package:flutter/material.dart';
import 'package:harry_potter_app/Screens/list.dart';
import 'package:harry_potter_app/model/harry.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final myController = TextEditingController();

  List<String> marry = ["Harry", "Mony", "Looly"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Schyler',
          scaffoldBackgroundColor: Color(0xFFEEECEC),
        ),
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 10,
            elevation: 0,
            backgroundColor: Colors.blueAccent,
          ),
          body: Column(
            children: [
              _topbar(
                context,
                mycontroller: myController,
                myfild: TextField(
                  controller: myController,
                  onChanged: (s) {
                    setState(() {
                      search(search: s);
                    });
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
              ),
              Expanded(child: list())
            ],
          ),
        ));
  }
}


Widget _topbar(BuildContext context, {required TextEditingController mycontroller, required TextField myfild}) {
  return Container(
    height: 160,
    child: Stack(
      children: [
        /////
        Positioned(
          top: 0,
          width: MediaQuery.of(context).size.width,
          height: 130,
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(top: 60, left: 10),
              child: Text(
                "Welcome To Harry Potter",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0, 2.0), // shadow direction: bottom right
                  )
                ]),
          ),
        )

        /////
        ,
        Positioned(
          top: 90,
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: Colors.yellow,
                child: Padding(padding: const EdgeInsets.only(top: 3, left: 10), child: myfild),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0, 3.0), // shadow direction: bottom right
                  )
                ]),
              )),
        )
        /////
      ],
    ),
  );
}




// Search Function 


void search({required String search}) {
  MyList = Harry.where((name) {
    return name.contains(search);
  }).toList();
  print(MyList);
}






// TextField(
//                     controller: mycontroller,
//                     onChanged: (s) {
//                       search(search: s);

//                     },
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Search',
//                       hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
//                     ),
//                   ),
