import 'package:flutter/material.dart';

class ExemploStack extends StatefulWidget {
  @override
  _ExemploStackState createState() => _ExemploStackState();
}

class _ExemploStackState extends State<ExemploStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack'),),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: 300,
              height: 300,
              color: Colors.red,),),
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green,),),
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,),),
        ],
      ),
    );
  }
}
