import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/Bg.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/ConversaListaContato.dart';


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
               Padding(
                 padding: const EdgeInsets.only(top:563.0),
                 child: Container(
                   child: Row(
                     children: [
                       IconButton(icon: Icon(Icons.emoji_emotions,color: Colors.white38,), onPressed: (){}),
                       Padding(
                         padding: const EdgeInsets.only(left:10.0),
                         child: Container(
                           height: 37,
                           width: 300,
                           child: TextField(
                             onTap: (){

                             },

                               decoration: InputDecoration(
                                   labelText:'Digite aqui',
                                   labelStyle:TextStyle(fontSize: 15,color: Colors.white70)),
                             style: TextStyle(fontSize: 14),
                             showCursor: false,


                       ),
                         ),
                       ),
                     ],
                   ),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(30)),
                     color: Colors.blueGrey.shade900,
                   ),
                   width:360,
                   height:37 ,

                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:565.0,left: 362),
                 child: Container(
                   child:FloatingActionButton(
                     onPressed: (){
                     },
                   child: Icon(Icons.mic_rounded,size: 20,color: Colors.white,
                   ),
                   ),
                   width:50,
                   height:35 ,

                 ),
               ),


          ],
        ),
      ],
        ),
      );
  }
}
