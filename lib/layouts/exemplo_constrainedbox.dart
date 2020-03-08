import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ExemploConstrainedBox extends StatefulWidget {
  @override
  _ExemploConstrainedBoxState createState() => _ExemploConstrainedBoxState();
}

class _ExemploConstrainedBoxState extends State<ExemploConstrainedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 50, 
          minHeight: 10,
          maxWidth: 50,
          minWidth: 10),
        child: FlutterLogo(size: 200) ,),
    );
  }
}