import 'package:flutter/material.dart';

import 'layouts/exemplo_center.dart';
import 'layouts/exemplo_constrainedbox.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExemploConstrainedBox(),
    );
  }
}