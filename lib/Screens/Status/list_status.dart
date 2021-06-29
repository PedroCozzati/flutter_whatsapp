import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Status/status_list_tile_text.dart';
import 'package:flutter_whatsapp/Screens/Status/status_old.dart';

import '../../Models/profiles.dart';
import 'status_list_tile.dart';
import 'status_old.dart';

class ListStatus extends StatefulWidget {

  @override
  _ListStatusState createState() => _ListStatusState();
}

class _ListStatusState extends State<ListStatus> {
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
  final List <Profile> perfil = [
    Profile(user: 'João', profileImage: profileImg[0], id: 0, recado: 'recado', lastMessage: 'oi',cel:11973477437),
    Profile(user: 'Maria', profileImage: profileImg[1], id: 1, recado: 'recado', lastMessage: 'oi',cel:9388383838),
    Profile(user: 'Edu', profileImage: profileImg[2], id: 2, recado: 'recado', lastMessage: 'oi',cel:9388383838),
    Profile(user: 'Luis', profileImage: profileImg[3], id: 3, recado: 'recado', lastMessage: 'oi',cel:9388383838),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey.shade900,
        child:Column(
          children: [
            StatusListTile(),
            StatusText(),
            ListView.builder(
                itemCount: perfil.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 5),
                itemBuilder: (context, index) {
                  return StatusView(
                    user: perfil[index].user,
                    id: perfil[index].id,
                    profileImage: perfil[index].profileImage,
                    recado: perfil[index].recado,
                    lastMessage: perfil[index].lastMessage,
                    cel: perfil[index].cel,
                  );
                }
            ),

          ],
        )

      ),
      floatingActionButton:FloatingActionButton(
          child:Icon(
              Icons.camera_alt_rounded,
          ),
          backgroundColor: Colors.teal.shade300,
          onPressed: (){}),
    );
  }
}
