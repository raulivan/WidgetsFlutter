import 'package:flutter/material.dart';

class ExemploListView extends StatefulWidget {
  @override
  _ExemploListViewState createState() => _ExemploListViewState();
}

class _ExemploListViewState extends State<ExemploListView> {
  final List<String> itens = new List<String>();

  @override
  void initState() {
    super.initState();
    for (int i = 1; i <= 100; i++) itens.add('Opção $i');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listas"),
        ),
        body: geraListaDinamica());
  }

  ListView geraListaDinamica() {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: itens.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.green[100],
            child: Center(child: Text('Opção ${itens[index]}')),
          );
        });
  }

  ListView geraListaEstatica() {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Opção A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Opção B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Opção C')),
        ),
      ],
    );
  }
}
