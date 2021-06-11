import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/Conversa.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/Bg.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/CampoEmoji.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/ConversaListaEu.dart';

import 'TextControlller.dart';
import 'TextField.dart';

class ChatBody extends StatefulWidget {
  @override
  _ChatBodyState createState() => _ChatBodyState();
  List<Conversa> messages  = [];
  TextEditingController controladorMensagem = TextEditingController();
}

class _ChatBodyState extends State<ChatBody> {

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
                     child: ConversaLista()
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
                       TextControl(),
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


