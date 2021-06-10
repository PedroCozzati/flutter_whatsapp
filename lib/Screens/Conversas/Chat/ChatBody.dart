import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/Conversa.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/Bg.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/CampoEmoji.dart';

import 'TextControlller.dart';
import 'TextField.dart';

class ChatBody extends StatefulWidget {
  @override
  _ChatBodyState createState() => _ChatBodyState();
  List<Conversa> messages  = [Conversa(mensagem: 'teste' , id:1204939439658598649 )];
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
                     child: ListView.builder(
                         reverse: true,
                         shrinkWrap: true,
                         itemCount: widget.messages.length,
                         itemBuilder: (context, indice){
                           return Container (
                             height: 60,
                               padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                                 child: Align(
                                 alignment: (widget.messages[indice].id == 1204939439658598649?Alignment.topRight:Alignment.topLeft),
                                 child: Container(
                                 decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: (widget.messages[indice].id == 1204939439658598649 ?Colors.teal.shade900:Colors.blueGrey.shade900),
                                 ),
                                 padding: EdgeInsets.all(10),
                                 child: Text(widget.messages[indice].mensagem, style: TextStyle(fontSize: 15,color: Colors.white),),
                                 ),
                           ),
                           );
                         }
                     ),

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


