import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/conversa.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/page_chat.dart';

import '../../../main.dart';
import 'chat_body.dart';

class TextControl extends StatefulWidget {
  const TextControl ({required this.mensagem,required this.user,required this.messages,required this.count,required this.cameras});
  final String mensagem;
  final String user;
  final List messages;
  final int count;
  final List<CameraDescription> cameras;
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
   TextEditingController controladorMensagem = TextEditingController();
int count = 0;
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
              cursorColor: Colors.teal,
              onTap: () {},
              controller: controladorMensagem,
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
                hintStyle: TextStyle(
                  color: Colors.white70,
                  height: 1,
                ),
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
                final String mensagem = controladorMensagem.text;
                if (mensagem != '') {
                  setState(() {
                    count = widget.count + 1;
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Chat(profileImage: '',mensagem: mensagem, label: widget.user,
                                messages: [(Conversa(data: DateTime.now(), id: 12, mensagem: mensagem)),(Conversa(data: DateTime.now(), id: 12, mensagem: 'mensagem'))
                                ], count: 2,cameras: cameras,),
                      ));
                }
              }
            ),
          ),
        ],
      ),
    );
  }
}



