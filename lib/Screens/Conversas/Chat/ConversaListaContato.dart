import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/Conversa.dart';

class ConversaLista extends StatefulWidget {

  @override
  _ConversaListaState createState() => _ConversaListaState();
}

String Texto;
String mensagem;
Conversa conversa;

void TamanhoContainer(Container container){
  container.width = Texto.length;
}

class _ConversaListaState extends State<ConversaLista> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0,left: 8.0),
      child: Container(
        height: 37,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade900,
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom:15.0),
                child: Text({mensagem},style: TextStyle(color: Colors.white),),
              ),
            ),
          ),


    );
  }
}
