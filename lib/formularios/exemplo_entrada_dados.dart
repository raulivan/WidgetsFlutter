import 'package:flutter/material.dart';

class ExemploEntradaDados extends StatefulWidget {
  @override
  _ExemploEntradaDadosState createState() => _ExemploEntradaDadosState();
}

class _ExemploEntradaDadosState extends State<ExemploEntradaDados> {
  final controller = TextEditingController();
  String texto_digitado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[Icon(Icons.android), Text('Entrada')],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.all_out), onPressed: () {
            setState(() {
              texto_digitado = controller.text;
            });
          }),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: "Digite seu nome",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 30)),
            Text('O valor digitado foi: $texto_digitado',
            style: TextStyle(fontSize: 20,
            color:  Colors.red))
          ],
        ),
      ),
    );
  }
}
