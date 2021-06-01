import 'package:flutter/material.dart';


class ChatBody extends StatefulWidget {

  @override
  _ChatBodyState createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
           children:[
             Container(
              color: Colors.grey.shade900,
              width: 1200,
              height: 603.4,

                 child: Image(
                   image: NetworkImage('https://th.bing.com/th/id/R8a814aa89f8c72a455d860b9ab50e3d1?rik=TjPdbWk%2bul%2b%2frA&pid=ImgRaw'),
                    fit: BoxFit.fill
                 ),
            ),
             Padding(
               padding: const EdgeInsets.only(top:563.0),
               child: Container(
                 child: Row(
                   children: [
                     IconButton(icon: Icon(Icons.emoji_emotions,color: Colors.white38,), onPressed: (){})
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
               padding: const EdgeInsets.only(top:560.0,left: 362),
               child: Container(
                 child: Icon(Icons.check_circle,size: 42,color: Colors.tealAccent,
                 ),
                 width:50,
                 height:37 ,

               ),
             ),

             Padding(
               padding: const EdgeInsets.only(top:460.0,left: 10),
               child: Container(
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(bottom:1.0,left: 10),
                       child: Text(
                         'Boa tarde :)', style: TextStyle(color: Colors.white,fontSize: 20),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top:10.0,left: 10),
                       child: Text(
                         '10:39', style: TextStyle(color: Colors.white70,fontSize: 13),
                       ),
                     )
                   ],
                 ),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(7)),
                   color: Colors.blueGrey.shade900,
                 ),
                 width:170,
                 height:35 ,

               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top:500.0,left: 300),
               child: Container(
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(bottom:1.0,left: 10),
                       child: Text(
                         'Olá', style: TextStyle(color: Colors.white,fontSize: 20),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top:10.0,left: 10),
                       child: Text(
                         '10:39', style: TextStyle(color: Colors.white70,fontSize: 13),
                       ),
                     )
                   ],
                 ),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(7)),
                   color: Colors.blueGrey.shade900,
                 ),
                 width:100,
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
