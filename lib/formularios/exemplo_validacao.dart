import 'package:flutter/material.dart';

class ExemploValidacao extends StatefulWidget {
  @override
  _ExemploValidacaoState createState() => _ExemploValidacaoState();
}

class _ExemploValidacaoState extends State<ExemploValidacao> {
  //Kesys
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //Controladores
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefoneController = TextEditingController();

  //Focus
  final _nomeFocus = FocusNode();
  final _telefoneFocus = FocusNode();
  final _emailFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Row(
            children: <Widget>[Icon(Icons.verified_user), Text(' Cadastro')],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.save), onPressed: _salvar),
        backgroundColor: Colors.grey,
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 80),
            child: Card(
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    children: <Widget>[
                      TextFormField(
                        focusNode: _nomeFocus,
                        controller: _nomeController,
                        decoration: InputDecoration(hintText: 'Nome'),
                        keyboardType: TextInputType.text,
                        validator: (text) {
                          if (text.isEmpty) {
                            FocusScope.of(context).requestFocus(_nomeFocus);
                            return 'Nome inválido';
                          }
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        focusNode: _emailFocus,
                        controller: _emailController,
                        decoration: InputDecoration(hintText: 'E-mail'),
                        keyboardType: TextInputType.emailAddress,
                        validator: (text) {
                          if (text.isEmpty || !text.contains('@')) {
                            FocusScope.of(context).requestFocus(_emailFocus);
                            return 'E-mail inválido';
                          }
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        focusNode: _telefoneFocus,
                        controller: _telefoneController,
                        decoration: InputDecoration(hintText: 'Telefone'),
                        keyboardType: TextInputType.phone,
                        validator: (text) {
                          if (text.isEmpty) {
                            FocusScope.of(context).requestFocus(_telefoneFocus);
                            return 'Telefone inválido';
                          }
                        },
                      ),
                    ],
                  )),
            ),
          ),
        ));
  }

  void _salvar() {
    if (_formKey.currentState.validate()) {
      print('Deu tudo certo');
    }
  }
}

