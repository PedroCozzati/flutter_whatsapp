
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/profiles.dart';
import 'package:flutter_whatsapp/Screens/Contatos/page_contatos.dart';
import 'package:flutter_whatsapp/Screens/Conversas/conversa_list_tile.dart';
import 'conversa_list_tile.dart';


class ListConversas extends StatefulWidget {

  @override
  _ListConversasState createState() => _ListConversasState();


}
class _ListConversasState extends State<ListConversas> {

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

  List<Profile> perfil = [
    Profile (profileImage: profileImg[0],id:1,recado:'',lastMessage:'Olá', user: 'Joao',cel:1197374373),
    Profile (profileImage:profileImg[1],id:1,recado:'',lastMessage:'oi', user: 'Elo',cel:212121212),
    Profile (profileImage:profileImg[2],id:1,recado:'',lastMessage:'teste', user: 'Lucas',cel:234234324),
    Profile (profileImage:profileImg[3],id:1,recado:'',lastMessage:'123', user: 'Sandra',cel:212121212),
    Profile (profileImage:profileImg[4],id:1,recado:'',lastMessage:'Oi', user: 'Phill',cel:212121212),
    Profile (profileImage:profileImg[5],id:1,recado:'',lastMessage:'33444', user: 'Edu',cel:212121212),
    Profile (profileImage:profileImg[6],id:1,recado:'',lastMessage:'.....', user: 'Milena',cel:212121212),
    Profile (profileImage:profileImg[7],id:1,recado:'',lastMessage:'-----', user: 'Gustavo',cel:212121212),
    Profile (profileImage:profileImg[0],id:1,recado:'',lastMessage:'%%%%', user: 'Victor',cel:212121212),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            color: Colors.blueGrey.shade900,
            child:ListView.builder(
                itemCount: perfil.length,
                shrinkWrap: false,
                padding: EdgeInsets.only(top: 5),
                itemBuilder: (context, index) {
                  return ConversaTile(
                    user: perfil[index].user,
                    id: perfil[index].id,
                    profileImage: perfil[index].profileImage,
                    recado: perfil[index].recado,
                    lastMessage: perfil[index].lastMessage,
                  );
                }
          ),
        ),
      floatingActionButton:FloatingActionButton(
          child:Icon(
              Icons.message
          ),
          backgroundColor: Colors.teal.shade300,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageContatos()),
            );
          }),
    );
  }
}
