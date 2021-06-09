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
    return Expanded(
      flex: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 270,
            height: 45,
            child: TextField(
              onTap: () {},
              controller: _controladorMensagem,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blueGrey.shade900,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey.shade900,
                  ),
                  borderRadius: BorderRadius.circular(80.0),
                ),
                hintText: 'Digite aqui',
              ),
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          Container(
            width: 40,
            height: 50,
            decoration:BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.teal,
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 20,
              icon: Icon(
                  Icons.send
              ),
              onPressed: () {
                final String mensagem = _controladorMensagem.text;
                final Conversa conversa = Conversa(mensagem);
                print(conversa);
              },
            ),
          ),
        ],
      ),

    );
  }

}