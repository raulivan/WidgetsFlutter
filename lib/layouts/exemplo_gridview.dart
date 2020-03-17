import 'package:flutter/material.dart';

class ExemploGridView extends StatefulWidget {
  @override
  _ExemploGridViewState createState() => _ExemploGridViewState();
}

class _ExemploGridViewState extends State<ExemploGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grade'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],),
        ],
      ),
    );
  }
}
