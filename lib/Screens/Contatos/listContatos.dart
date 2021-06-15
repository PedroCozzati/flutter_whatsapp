import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Contatos/AddContatoTile.dart';

import 'ContatoListTile.dart';


class ListContatos extends StatefulWidget {

  @override
  _ListContatosState createState() => _ListContatosState();
}
class _ListContatosState extends State<ListContatos> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> contatos =
    new List.generate(count, (int i) => new ContactRow());
    return Scaffold(
      body: Container(
        color: Colors.blueGrey.shade900,
        child:ListView(
            children:<Widget>[
              Row(
                children: [
                  Container(
                    child: Row(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(left:15.0,top :12),
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: FloatingActionButton(
                              backgroundColor: Colors.tealAccent.shade700,
                              child: Icon(Icons.person_add,color: Colors.white,),
                              onPressed: addNewContactRow
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0,top:12),
                          child: Text('Novo Contato',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
                        ),
                  ],
                    ),
                  ),
                ],
              ),
               Container(
                height: 550.0,
                child: new ListView(
                  children: contatos,
                  scrollDirection: Axis.vertical,
                ),
              ),

        ],
    ),
        ),

    );
  }
  void addNewContactRow() {
    setState(() {
      count = count + 1;
    });
  }

}
class ContactRow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ContactRow();
}
NetworkImage randomImages() {
  // Define all colors you want here
  const predefinedImages = [
    NetworkImage('https://th.bing.com/th/id/R08ffa13510511cec2c6997cb752001f3?rik=Rb%2fGiy%2fa3cp0Tw&pid=ImgRaw'),
    NetworkImage('https://tse2.mm.bing.net/th/id/OIP.yN0ZTIMq3rzmiXuzQ6nErgHaFj?pid=ImgDet&w=746&h=560&rs=1'),
    NetworkImage('https://th.bing.com/th/id/R4a6d2866681146b7611d16416f68dffa?rik=iiwg6DUZwbHjQA&riu=http%3a%2f%2f2.bp.blogspot.com%2f-LszjDBoBUt4%2fUhQb8X4Ek4I%2fAAAAAAAAObE%2fo4BMfAExmdE%2fs1600%2ffotos-lindas-8.jpg&ehk=TnUja5dna0L2jIme3L%2bW2jdbghP1GYlKyLJbZYQbK1c%3d&risl=&pid=ImgRaw'),
    NetworkImage('https://th.bing.com/th/id/R44387f242a0d8ee3ab5d03f485db3eaf?rik=WXzY08jXdK%2fXbw&riu=http%3a%2f%2fwww.fundospaisagens.com%2fImagens%2fwallpapers-romanticos.jpg&ehk=tJ2HrCIljiSBCqrUamN3YchH3VeT2HVV5c0krJ4CCHE%3d&risl=&pid=ImgRaw'),
    NetworkImage('https://i0.wp.com/ncultura.pt/wp-content/uploads/2015/11/11071515_794418143938754_921529729687247776_n.jpg'),
    NetworkImage('https://4.bp.blogspot.com/_7Ju1jUK2oWs/TQdxXCdAvRI/AAAAAAAAABc/Z8BcsALtErQ/s1600/Paisagem.jpg') ,
    NetworkImage('https://tse1.mm.bing.net/th/id/OIP.IumWkT1hfQ3DbUZJ47fYiQHaFj?pid=ImgDet&rs=1'),
    NetworkImage('https://tse1.mm.bing.net/th/id/OIP.QW_dPaKSU-NMlBMMgFkpQgHaE9?pid=ImgDet&rs=1'),
    NetworkImage('https://tse1.mm.bing.net/th/id/OIP.LEThEESG0-LeAwKPOugVcwHaEK?pid=ImgDet&rs=1rl')
  ];
  Random random = Random();
  return predefinedImages[random.nextInt(predefinedImages.length)];
}
class _ContactRow extends State<ContactRow> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 170.0,
        padding: new EdgeInsets.all(5.0),
        child: Column(
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:12,top:12.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      child: CircleAvatar(
                        backgroundImage: randomImages(),
                        radius: 300,
                      ),
                    ),
                  ),
                  Container(
                    padding: new EdgeInsets.only(top:5.0,left: 18),
                  ),
                  Container(
                    width: 270,
                    height: 40,
                    child: TextFormField(
                      decoration: new InputDecoration(
                        border: InputBorder.none
                      ),
                      style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                  ),

                ],
              ),
          Container(
            padding: new EdgeInsets.only(top:2.0),
          ),
        ]));
  }
}