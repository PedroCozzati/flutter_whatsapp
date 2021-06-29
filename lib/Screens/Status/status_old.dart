import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Status/status_screen.dart';

class StatusView extends StatefulWidget {
  final String user;
  final String profileImage;
  final int id;
  final String recado;
  final String lastMessage;
  final int cel;
  StatusView({required this.user,required this.profileImage,required this.id,required this.recado,required this.lastMessage,required this.cel});

  @override
  _StatusViewState createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading:
      Padding(
        padding: EdgeInsets.only(top:3),
        child:
        Container(
          width: 50,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(widget.profileImage),
          ),
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white70,width: 2),
          ),
        ),
      ),
      title: Text(widget.user,style: TextStyle(color: Colors.white,fontSize: 18),),
      subtitle: Text('há 0 minutos',style: TextStyle(color:Colors.white60,fontSize: 15),),
      tileColor: Colors.blueGrey.shade900,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StatusScreen(label: widget.user,bg: widget.id,),
          ),
        );
      },
    );
  }
}
