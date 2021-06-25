
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/Profiles.dart';

import 'Chamada.dart';


class ChamadaTile extends StatefulWidget {
  String user;
  String profileImage;
  int id;
  String recado;
  String lastMessage;
  int cel;
  ChamadaTile({required this.user,required this.profileImage,required this.id,required this.recado,required this.lastMessage,required this.cel});
  @override
  _ChamadaTileState createState() => _ChamadaTileState();
}

class _ChamadaTileState extends State<ChamadaTile> {
  static const profileImg = [
    'https://th.bing.com/th/id/R08ffa13510511cec2c6997cb752001f3?rik=Rb%2fGiy%2fa3cp0Tw&pid=ImgRaw',
    'https://tse2.mm.bing.net/th/id/OIP.yN0ZTIMq3rzmiXuzQ6nErgHaFj?pid=ImgDet&w=746&h=560&rs=1',
    'https://th.bing.com/th/id/R4a6d2866681146b7611d16416f68dffa?rik=iiwg6DUZwbHjQA&riu=http%3a%2f%2f2.bp.blogspot.com%2f-LszjDBoBUt4%2fUhQb8X4Ek4I%2fAAAAAAAAObE%2fo4BMfAExmdE%2fs1600%2ffotos-lindas-8.jpg&ehk=TnUja5dna0L2jIme3L%2bW2jdbghP1GYlKyLJbZYQbK1c%3d&risl=&pid=ImgRaw',
    'https://th.bing.com/th/id/R44387f242a0d8ee3ab5d03f485db3eaf?rik=WXzY08jXdK%2fXbw&riu=http%3a%2f%2fwww.fundospaisagens.com%2fImagens%2fwallpapers-romanticos.jpg&ehk=tJ2HrCIljiSBCqrUamN3YchH3VeT2HVV5c0krJ4CCHE%3d&risl=&pid=ImgRaw',
    'https://i0.wp.com/ncultura.pt/wp-content/uploads/2015/11/11071515_794418143938754_921529729687247776_n.jpg',
    'https://4.bp.blogspot.com/_7Ju1jUK2oWs/TQdxXCdAvRI/AAAAAAAAABc/Z8BcsALtErQ/s1600/Paisagem.jpg',
    'https://tse1.mm.bing.net/th/id/OIP.IumWkT1hfQ3DbUZJ47fYiQHaFj?pid=ImgDet&rs=1',
    'https://tse1.mm.bing.net/th/id/OIP.LEThEESG0-LeAwKPOugVcwHaEK?pid=ImgDet&rs=1rl'
  ];
  @override
  Widget build(BuildContext context) {

    final List <Profile> perfil = [
      Profile(user: widget.user, profileImage: widget.profileImage, id: widget.id, recado: widget.recado, lastMessage: widget.recado,cel:widget.cel),
    ];
    return Container(
      height: 69,
      child: ListTile(
        onTap:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Chamada()),
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
