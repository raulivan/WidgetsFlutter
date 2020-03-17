import 'package:flutter/material.dart';

class ExemploExpanded extends StatefulWidget {
  @override
  _ExemploExpandedState createState() => _ExemploExpandedState();
}

class _ExemploExpandedState extends State<ExemploExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          SizedBox(
            width: 70,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(color: Colors.blue),
          ),
          SizedBox(
            width: 70,
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
