import 'package:flutter/material.dart';

class ScaffoldExemplo extends StatefulWidget {
  @override
  _ScaffoldExemploState createState() => _ScaffoldExemploState();
}

class _ScaffoldExemploState extends State<ScaffoldExemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar2(),
      floatingActionButton: buildFloatingActionButton3(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0,),
        color: Colors.white70,
    ),
      body: Container(),
    );
  }

  //Variações do App Bar
  //Variação 1
  AppBar buildAppBar() {
    return AppBar(
      title: Text('Titulo aqui!'),
      elevation: 5,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {
            print('Clicou em sair');
          },
        )
      ],
    );
  }

  //Variação 2
  AppBar buildAppBar2() {
    return AppBar(
      title: Text('AppBar 2'),
      centerTitle: false,
      elevation: 5,
      actions: <Widget>[
        PopupMenuButton<int>(
          itemBuilder: (context) => <PopupMenuEntry<int>>[
            const PopupMenuItem<int>(
              child: Text('Opção 1'),
              value: 1,
            ),
            const PopupMenuItem<int>(
              child: Text('Opção 2'),
              value: 2,
            )
          ],
          onSelected: (result) {
            print('Opção selecionada $result');
          },
        )
      ],
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () => print('Clicou no FloatingActionButton'),
      tooltip: 'Float Button',
      child: const Icon(Icons.add),
    );
  }

  FloatingActionButton buildFloatingActionButton2() {
    return FloatingActionButton.extended(
      onPressed: () => print('Clicou no FloatingActionButton'),
      label: Text('CEFET'),
      icon: Icon(Icons.thumb_up),
      backgroundColor: Colors.pink,
    );
  }

  FloatingActionButton buildFloatingActionButton3() {
    return FloatingActionButton(
      onPressed: () => print('Clicou no FloatingActionButton'),
      tooltip: 'Float Button',
      child: const Icon(Icons.favorite_border),
    );
  }
}
