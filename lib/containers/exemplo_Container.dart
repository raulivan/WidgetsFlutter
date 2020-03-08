import 'package:flutter/material.dart';

class ExemploContainer extends StatefulWidget {
  @override
  _ExemploContainerState createState() => _ExemploContainerState();
}

class _ExemploContainerState extends State<ExemploContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildContainer3());
  }

  Container buildContainer() {
    return Container(
        margin: const EdgeInsets.all(30.0), color: Colors.amber[600]);
  }

  Container buildContainer1() {
    return Container(
      margin: const EdgeInsets.fromLTRB(50, 50, 0, 0),
      padding: const EdgeInsets.all(10.0),
      color: Colors.blue[600],
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(0.2),
      child: Center(
          child: Text(
        'To ficando fera nisso.',
        style: TextStyle(fontSize: 30),
      )),
      constraints: BoxConstraints.expand(
        height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
      ),
    );
  }

  Container buildContainer2() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2.5,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.blueAccent],
            ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90))),
        child: Center(
            child: Text(
          'Olha que top isso.',
          style: TextStyle(fontSize: 30),
        )));
  }

  Container buildContainer3() {
    return Container(
        margin: const EdgeInsets.only(left: 20, top: 50, right: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2.5,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.white70],
            )),
        child: Center(
            child: Text(
          'Olha que top isso.',
          style: TextStyle(fontSize: 30),
        )));
  }


}
