import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/Bg.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/ConversaListaContato.dart';

import 'TextControlller.dart';
import 'TextField.dart';


class ChatBody extends StatefulWidget {

  @override
  _ChatBodyState createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  @override
  Widget build(BuildContext context) {
    return Material(
       child:Column(
          children: [
            Stack(
             children:[

               Background(),
               ConversaLista(),
               CampoText(),
               TextControl(),

          ],
        ),
      ],
        ),
      );
  }
}
