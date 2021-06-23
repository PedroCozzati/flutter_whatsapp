
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Chat/PageChat.dart';

class ConversaTile extends StatefulWidget {

  String user;
  String profileImage;
  int id;
  String recado;
  String lastMessage;

  ConversaTile({required this.user,required this.profileImage,required this.id,required this.recado,required this.lastMessage});

  @override
  _ConversaTileState createState() => _ConversaTileState();
}

class _ConversaTileState extends State<ConversaTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 52,
      child: ListTile(
        trailing:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Text('00:00',style: TextStyle(color: Colors.tealAccent),),
          Icon(
              Icons.circle_notifications,
            color: Colors.tealAccent,
          ),
          ],
        ),
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Chat()),
          );
        },
        leading:
        Padding(
          padding: EdgeInsets.only(top: 0,bottom: 5),
          child:
          Container(
            width: 52,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(widget.profileImage),
            ),
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top:18,bottom: 0),
          child:  Row(
        children:[
        Padding(
        padding: const EdgeInsets.only(bottom:5.0),
        child: Text(widget.user,style: TextStyle(color: Colors.white,fontSize: 18),),
      ),


      ],
    ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Row(
          children:[
            Padding(
              padding: const EdgeInsets.only(bottom:10.0),
              child: Text(widget.lastMessage,style: TextStyle(color: Colors.white70,fontSize: 15),),
            ),
        ],
          ),
        ),
      ),
    );
  }
}
