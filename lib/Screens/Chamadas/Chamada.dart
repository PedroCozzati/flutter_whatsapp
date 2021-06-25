import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/Profiles.dart';



class Chamada extends StatefulWidget {

  @override
  _ChamadaState createState() => _ChamadaState();
}

class _ChamadaState extends State<Chamada> {
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
  final String label = 'João';
  final int cel = 11985443058;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Stack(
            children:[
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Container(
                  color: Colors.grey.shade900,
                  width: 1200,
                  height: 630,

                  child: Image(
                      image: NetworkImage(profileImg[0]),
                      width: 100,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:0),
                child: Container(
                  color: Colors.teal.shade700,
                  width: 800,
                  height: 160,
                  child: SizedBox(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15.0,top: 20),
                          child: RichText(
                            text:TextSpan(
                              children: [
                                TextSpan(
                                  text:'Whatsapp\n',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18,
                                  ),
                                ),
                                TextSpan(
                                  text:label,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 36,
                                  ),
                                ),
                                TextSpan(
                                  text:'\nCHAMANDO',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100,top: 52),
                child: Icon(
                     Icons.call,
                     size: 20,
                    color:Colors.white70,),
                  ),
              Padding(
                padding: EdgeInsets.only(left: 180,top: 480),
                child: FloatingActionButton(
                  onPressed: (){
                    Navigator.pop(
                    context
                  );},
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.call_end_rounded,
                    size: 30,
                    color:Colors.white,
                    ),

                ),
              ),

              Padding(
                padding: EdgeInsets.only(top:573),
                child: Container(
                  color: Colors.teal.shade700,
                  width: 800,
                  height: 110,
                  child: SizedBox(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:50.0,top: 10),
                          child: Icon(
                            Icons.volume_up_rounded,
                            color: Colors.white70,
                            size:35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:105.0,top: 10),
                          child: Icon(
                            Icons.messenger,
                            color: Colors.white70,
                            size:35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:97.0,top: 10),
                          child: Icon(
                            Icons.mic_off_rounded,
                            color: Colors.white70,
                            size:35,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],

          ),
        ],
      ),
    );

  }
}
