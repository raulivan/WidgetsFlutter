import 'package:flutter/material.dart';

class ExemploAlign extends StatefulWidget {
  @override
  _ExemploAlignState createState() => _ExemploAlignState();
}

class _ExemploAlignState extends State<ExemploAlign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: FlutterLogo(
          size: 100,
        )
      ),
    );
  }
}