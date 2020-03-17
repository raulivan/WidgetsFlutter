import 'package:flutter/material.dart';

class ExemploColumn extends StatefulWidget {
  @override
  _ExemploColumnState createState() => _ExemploColumnState();
}

class _ExemploColumnState extends State<ExemploColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
