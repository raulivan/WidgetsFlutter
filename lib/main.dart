import 'package:flutter/material.dart';
import 'formularios/exemplo_controles_somples.dart';
import 'layouts/exemplo_stack.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExemploControlesSimples(),
    );
  }
}