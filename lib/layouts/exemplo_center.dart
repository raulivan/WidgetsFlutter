import 'package:flutter/material.dart';

class ExemploCenter extends StatefulWidget {
  @override
  _ExemploCenterState createState() => _ExemploCenterState();
}

class _ExemploCenterState extends State<ExemploCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(size: 100),
      ),
    );
  }
}
