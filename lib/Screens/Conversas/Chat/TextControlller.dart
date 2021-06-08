import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/Conversa.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/ChatBody.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/ConversaListaContato.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/TextField.dart';

class TextControl extends StatefulWidget {

  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  final TextEditingController _controladorMensagem = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left:50.0,top:500),
        child: Container(
          child: Row(
            children:[
              Container(
                width: 200,
                height: 50,
                child: TextField(
                  controller: _controladorMensagem,
                  decoration: InputDecoration(
                      labelText:'Digite aqui',
                      labelStyle:TextStyle(fontSize: 15,color: Colors.white70)
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),
             IconButton(
              iconSize: 30,
              icon: Icon(
                  Icons.send
              ),
              onPressed: (){
                final String mensagem = _controladorMensagem.text;
                final Conversa conversa = Conversa(mensagem);
                print(conversa);
                setState(() {
                  ConversaLista(m: mensagem);
                });

              }),
            ],
          ),
        ),
    );
  }
}
