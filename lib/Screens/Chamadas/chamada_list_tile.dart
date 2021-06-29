
import 'package:flutter/material.dart';
import 'chamada.dart';


class ChamadaTile extends StatefulWidget {
  final String user;
  final String profileImage;
  final int id;
  final String recado;
  final String lastMessage;
  final int cel;
  ChamadaTile({required this.user,required this.profileImage,required this.id,required this.recado,required this.lastMessage,required this.cel});
  @override
  _ChamadaTileState createState() => _ChamadaTileState();
}

class _ChamadaTileState extends State<ChamadaTile> {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 69,
      child: ListTile(
        onTap:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Chamada(label:widget.user,bg: widget.id,)),
          );
          },
        trailing:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Icon(
              Icons.call,
              color: Colors.tealAccent,
            ),
          ],
        ),
        leading:
        Padding(
          padding: EdgeInsets.only(top: 0,bottom: 5),
          child:
          Container(
            width: 50,
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
          padding: const EdgeInsets.only(top: 14,bottom: 0),
          child: Row(
            children:[
              Padding(
                padding: const EdgeInsets.only(bottom:5.0),
                child: Text(widget.user,style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
            ],
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
          children:[
            Padding(
              padding: const EdgeInsets.only(bottom:1.0, top: 1),
              child: Text('28 de maio 20:00',style: TextStyle(color: Colors.white70,fontSize: 15),),
            ),

        ],
          ),
        ),
      ),
    );
  }
}
