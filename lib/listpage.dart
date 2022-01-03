import 'package:flutter/material.dart';

class Listpage extends StatefulWidget {
  const Listpage({Key? key}) : super(key: key);

  @override
  _ListpageState createState() => _ListpageState();
}

class _ListpageState extends State<Listpage> {
  List<Widget> items = [
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.pink,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.purple,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.black,
    ),
  ];

  List<double> opacity = [
    1,
    1,
    1,
    1,
  ];
  List<GlobalKey> _widgetkey = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            print(_widgetkey[index].currentState);
          },
          child: Opacity(
              key: _widgetkey[index],
              opacity: opacity[index],
              child: items[index]),
        ),
      ),
    );
  }
}
