import 'dart:math';
import 'package:flutter/material.dart';

class ExemploTransform extends StatefulWidget {
  @override
  _ExemploTransformState createState() => _ExemploTransformState();
}

class _ExemploTransformState extends State<ExemploTransform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.rotate(
        alignment: Alignment.bottomCenter,
        angle: pi / 4,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: const Color(0xFFE8581C),
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
