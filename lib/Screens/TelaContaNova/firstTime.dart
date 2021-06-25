import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/Profiles.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/config.dart';
import 'package:flutter_whatsapp/Screens/TelaContaNova/firstTimeConfig.dart';
import 'Termos.dart';

class FirstScreen extends StatefulWidget {

  String myName ;
  FirstScreen({required this.myName});
  final List<Profile> _listaMe = List.empty(growable: true);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

final _formKey = GlobalKey<FormState>();
final TextEditingController _controladorNome = TextEditingController();
final TextEditingController _controladorCel = TextEditingController();
final int tamanhoNumeroCelular = 11;
List listaPerfil = new List.filled(0, null, growable:true);

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
                radius: 75,
                backgroundImage: NetworkImage('widget.myImg'),
              ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: new EdgeInsets.only(top:10.0,left: 10),
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
                            }
                            listaPerfil.add(nomeCadastrado);
                            },
                          decoration: new InputDecoration(
                              hintText: 'Digite o seu nome',
                              hintStyle:  TextStyle(color: Colors.white70),
                          ),
                          style: TextStyle(color: Colors.white,fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 15,
                        height: 15,
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
                                listaPerfil.add(telCadastrado);
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
                                      widget.myName = _controladorNome.toString();
                                      FirstConfig(myName: widget.myName, recado: '', id: 1,myNumber: '',myImg: '',);
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
    final String nome = _controladorNome.text;
    final String tel = _controladorCel.text;
    final cadastroCompleto = Profile(user: nome,cel: 1,id: 1,recado: '',lastMessage: '', profileImage: '' );
    Navigator.pop(context, cadastroCompleto);
    ListView.builder(
        itemCount:widget._listaMe.length,
        itemBuilder: (context, indice){
          final listaMe = widget._listaMe[indice];
          return ItensFormulario(listaMe);
        }
    );
    if (_formKey.currentState!.validate()) {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return Config();
      })).then(
              (produtosAdd) => _atualizar(produtosAdd)
      );
    }
    }
  void _atualizar(Profile produtosAdd){
    if(produtosAdd != null){
      setState(() {
        widget._listaMe.add(produtosAdd);
      });
    }
  }
  }
class ItensFormulario extends StatelessWidget{
  final Profile _listaMe;
  ItensFormulario(this._listaMe);

  @override
  Widget build(BuildContext context){
    return Card(
        child:ListTile(
            leading:Icon(Icons.accessibility_new),
            title: Text( _listaMe.user.toString()),
            subtitle: Text(_listaMe.cel.toString(), style: TextStyle(fontSize: 12),
            )
        )
    );
  }
}