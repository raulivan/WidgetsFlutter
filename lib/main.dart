import 'package:flutter/material.dart';
import 'formularios/exemplo_entrada_dados.dart';
import 'formularios/exemplo_validacao.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExemploValidacao(),
    );
  }
}