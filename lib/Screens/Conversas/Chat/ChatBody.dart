import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/Bg.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/CampoEmoji.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/ConversaListaContato.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/ConversaListaEu.dart';
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
        child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overScroll) {
      overScroll.disallowGlow();
      return false;
    },
      child:
       Stack(
         children:[
           BackgroundImage(image: 'https://th.bing.com/th/id/R8a814aa89f8c72a455d860b9ab50e3d1?rik=TjPdbWk%2bul%2b%2frA&pid=ImgRaw'),
           Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Expanded(
                 flex:1,
                 child: Container(
                   width: 400,
                   height: 300,
                     child: ListView(
                       reverse: true,

                       physics: ClampingScrollPhysics(),
                       shrinkWrap: true,
                       children: [
                         ConversaListaLeft(),
                         ConversaListaRight(),
                         ConversaListaLeft(),
                         ConversaListaRight(),
                         ConversaListaLeft(),
                         ConversaListaRight(),
                         ConversaListaRight(),
                         ConversaListaRight(),
                         ConversaListaLeft(),
                         ConversaListaRight(),
                         ConversaListaRight(),
                         ConversaListaLeft(),
                         ConversaListaRight(),
                            ],
                     ),
                   ),
               ),
           Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children:[
               Container(
                 child:Row(
                   children:[
                     CampoEmoji(),
                     TextControl(),
                     CampoText(),
                   ],
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
