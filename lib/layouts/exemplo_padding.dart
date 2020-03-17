import 'package:flutter/material.dart';

class ExemploPadding extends StatefulWidget {
  @override
  _ExemploPaddingState createState() => _ExemploPaddingState();
}

class _ExemploPaddingState extends State<ExemploPadding> {
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
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(color: Colors.blue),
            ),
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
