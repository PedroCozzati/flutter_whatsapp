import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/conversa.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/bg.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/campo_emoji.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/conversa_lista_eu.dart';

import 'text_controller.dart';
import 'text_field.dart';

class ChatBody extends StatefulWidget {
  const ChatBody ({required this.mensagem,required this.label,required this.messages,required this.count});
  final String mensagem;
  final String label;
  final List messages;
  final int count;

  @override
  _ChatBodyState createState() => _ChatBodyState();

}

class _ChatBodyState extends State<ChatBody> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overScroll) {
      overScroll.disallowGlow();
      return false;
    },
      child:
       Stack(
         children:[
          BackgroundImage(image: 'https://1.bp.blogspot.com/-jNFpweSEPGc/XOAwhsqdlhI/AAAAAAAAZGc/lu92YMJlmrcnKmDKVNOtrgdSo6CIOnbFwCLcBGAs/s640/8.jpg'),
           Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Expanded(
                 flex:1,
                 child: Container(
                   width: 400,
                     child: ConversaLista(mensagem: widget.mensagem),

                 ),
                     ),
           Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children:[
               Expanded(
                 flex: 0,
                 child: Container(
                   child:Row(
                     children:[
                       CampoEmoji(),
                       TextControl(cameras: [],mensagem: widget.mensagem,user: widget.label, messages: [(Conversa(data: DateTime.now(), id: 12, mensagem: widget.mensagem)),(Conversa(data: DateTime.now(), id: 12, mensagem: 'Boa noite'))
                       ],count: widget.count +1),
                       CampoText(),
                     ],
                   ),
                 ),
               ),
             ],
           ),
         ],
           ),
      ],
        ),
        ),
    );
  }
}


