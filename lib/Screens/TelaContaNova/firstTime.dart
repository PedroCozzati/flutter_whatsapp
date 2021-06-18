import 'package:flutter/material.dart';

import '../HomePage.dart';
import 'Termos.dart';

class FirstScreen extends StatefulWidget {

  @override
  _FirstScreenState createState() => _FirstScreenState();
}
final _formKey = GlobalKey<FormState>();
final TextEditingController _controladorNome = TextEditingController();
final TextEditingController _controladorCel = TextEditingController();
final int tamanhoNumeroCelular = 11;

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Bem vindo!')),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Container(
        color: Colors.blueGrey.shade900,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Container(
              width: 30,
              height: 20,
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage('https://yt3.ggpht.com/a/AATXAJwTwhMXtrKbVCkJBDayqTR74vIVEfT_NR88UQ=s900-c-k-c0xffffffff-no-rj-mo'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: new EdgeInsets.only(top:5.0,left: 10),
                child: Container(
                  width: 250,
                  height: 130,
                  child:Form(
                    key: _formKey,
                    child: Column(
                      children: [

                      SizedBox(
                        width: 255,
                        height: 50,
                        child: TextFormField(
                          maxLength: 34,

                          controller: _controladorNome,
                          validator: (nomeCadastrado){
                            if (nomeCadastrado==null||nomeCadastrado.isEmpty){
                              return "Digite um nome";
                            }},
                          decoration: new InputDecoration(
                              hintText: 'Digite o seu nome',
                              hintStyle:  TextStyle(color: Colors.white70),
                          ),
                          style: TextStyle(color: Colors.white,fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 194,
                            child: TextFormField(
                              maxLength: 11,
                              keyboardType: TextInputType.number,
                              controller: _controladorCel,
                              validator: (telCadastrado){
                                if (telCadastrado==null||telCadastrado.isEmpty){
                                  return "Digite um telefone valido";
                                }
                                else if (telCadastrado.length < tamanhoNumeroCelular ){
                                  return "Digite um telefone valido";
                                }
                                },

                              decoration: new InputDecoration(
                                  hintText: 'Digite o seu telefone',
                                  hintStyle:  TextStyle(color: Colors.white70),
                              ),
                              style: TextStyle(color: Colors.white,fontSize: 15),
                            ),
                          ),
                          FloatingActionButton(
                              child: Icon(Icons.send),
                              onPressed: (){
                                      _criarCadastro(context);
                                    },
                                ),
                        ],
                      ),
                    ],
                  ),
                  )
                ),
              ),
            ),

          ]
        )

      ),
    );
  }
  void _criarCadastro(BuildContext context){
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Termos()),
      );
    }
  }
}
