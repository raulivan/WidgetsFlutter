import 'package:flutter/material.dart';

class ExemploRow extends StatefulWidget {
  @override
  _ExemploRowState createState() => _ExemploRowState();
}

class _ExemploRowState extends State<ExemploRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          SizedBox(
            height:  MediaQuery.of(context).size.height,
            width: 100,
            child: Container(color: Colors.red,),),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: 100,
            child: Container(color: Colors.blue,),),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: 100,
            child: Container(color: Colors.yellow,),),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: 100,
            child: Container(color: Colors.green,),)
        ],
      ),
    );
  }
}