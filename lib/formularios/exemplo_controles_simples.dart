import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExemploControlesSimples extends StatefulWidget {
  @override
  _ExemploControlesSimplesState createState() =>
      _ExemploControlesSimplesState();
}

class _ExemploControlesSimplesState extends State<ExemploControlesSimples> {
  String _valorSelecionadoDrop;
  String _grupoSexo;
  bool _segunda = false, _terca = false, _quarta = false, _quinta = false,
      _sexta = false, _sabado = false, _domingo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                //Caixa de TExto
                TextField(
                    decoration: InputDecoration(
                      labelText: 'Campo de Texto',
                    ),
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.left),

                //Senha
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                ),

                //Combobox
                Row(
                  children: <Widget>[
                    Text('Selecione:'),
                    SizedBox(
                      width: 10,
                    ),
                    DropdownButton<String>(
                      value: _valorSelecionadoDrop,
                      elevation: 16,
                      style: TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          _valorSelecionadoDrop = newValue;
                        });
                      },
                      items: <String>[
                        'Divinópolis',
                        'Belo Horizonte',
                        'Contagem',
                        'Itauna'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value.substring(0, 1),
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),

                //RadioButton
                ListTile(
                  title: const Text('Masculino'),
                  leading: Radio(
                    value: 'm',
                    groupValue: _grupoSexo,
                    onChanged: (value) {
                      setState(() {
                        _grupoSexo = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Feminino'),
                  leading: Radio(
                    value: 'f',
                    groupValue: _grupoSexo,
                    onChanged: (value) {
                      setState(() {
                        _grupoSexo = value;
                      });
                    },
                  ),
                ),

                //CheckBonx
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: _segunda,
                      onChanged: (value) {
                        setState(() {
                          _segunda = value;
                        });
                      },
                    ),
                    Text('Segunda')
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: _terca,
                      onChanged: (value) {
                        setState(() {
                          _terca = value;
                        });
                      },
                    ),
                    Text('Terça')
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: _quarta,
                      onChanged: (value) {
                        setState(() {
                          _quarta = value;
                        });
                      },
                    ),
                    Text('Quarta')
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: _quinta,
                      onChanged: (value) {
                        setState(() {
                          _quinta = value;
                        });
                      },
                    ),
                    Text('Quinta')
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: _sexta,
                      onChanged: (value) {
                        setState(() {
                          _sexta = value;
                        });
                      },
                    ),
                    Text('Sexta')
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: _sabado,
                      onChanged: (value) {
                        setState(() {
                          _sabado = value;
                        });
                      },
                    ),
                    Text('Sabado')
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: _domingo,
                      onChanged: (value) {
                        setState(() {
                          _domingo = value;
                        });
                      },
                    ),
                    Text('Domingo')
                  ],
                ),

                //Icones
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 80.0,
                ),
                Icon(
                  Icons.add_call,
                  color: Colors.grey,
                  size: 80.0,
                ),

                //Image
                const Image(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/1181244/pexels-photo-1181244.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                )
              ],
            )),
      ),
    );
  }
}
