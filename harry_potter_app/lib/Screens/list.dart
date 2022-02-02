import 'package:flutter/material.dart';
import 'package:harry_potter_app/model/harry.dart';

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  _listState createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: _mycard(Name: Harry[index]),
        );
      },
      itemCount: MyList.length,
    );
  }
}

Widget _mycard({required String Name}) {
  return Container(
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [BoxShadow(color: Colors.grey.shade400, offset: Offset(2.0, 2.0))],
      color: Colors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(20)),
        Image.network(
          "https://upload.wikimedia.org//wikipedia/en/d/d7/Harry_Potter_character_poster.jpg",
          // width: 100,
          height: 120,
        ),
        Padding(padding: EdgeInsets.all(20)),
        Text(
          Name,
          style: TextStyle(fontSize: 30),
        )
      ],
    ),
  );
}
