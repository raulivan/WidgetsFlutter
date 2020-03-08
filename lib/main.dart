import 'package:flutter/material.dart';

import 'containers/exemplo_Container.dart';
import 'lyouts/exemplo_align.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExemploAlign(),
    );
  }
}