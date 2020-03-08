import 'package:flutter/material.dart';

class ExemploAspectRatio extends StatefulWidget {
  @override
  _ExemploAspectRatioState createState() => _ExemploAspectRatioState();
}

class _ExemploAspectRatioState extends State<ExemploAspectRatio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 3/2,
        child: FlutterLogo(),
        ),
    );
  }
}
