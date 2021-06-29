import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen ({required this.label,required this.bg});
  final String label;
  final int bg;

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen>with SingleTickerProviderStateMixin {
  late AnimationController controller;
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

  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10)
    )..addListener(() {
      setState(() {}
      );
    });
    controller.forward();
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 10);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Stack(
            children:[
              Container(
                color: Colors.grey.shade900,
                width: 1200,
                height: 683,
                child: Image(
                    image: NetworkImage(profileImg[widget.bg]),
                    fit: BoxFit.fill
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:30),
                child: Container(
                    color: Colors.white.withOpacity(0),
                  width: 800,
                  height: 70,
                  child: SizedBox(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0,bottom: 0),
                          child: Container(
                            height: 50,
                            child: FloatingActionButton(
                              backgroundColor:  Colors.white.withOpacity(0),
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_rounded,),
                            ),
                          ),
                        ),

                        Padding(
                            padding: EdgeInsets.only(left: 0),
                            child:Container(
                              child: CircleAvatar(
                                radius: 21,
                                backgroundImage: NetworkImage(profileImg[widget.bg]),
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0,top: 5),
                          child: RichText(
                            text:TextSpan(
                              children: [
                              TextSpan(
                              text:widget.label,
                               style: TextStyle(
                                  color: Colors.white,
                                 fontSize: 18,
                               ),
                            ),
                              TextSpan(
                              text:'\nHoje 00:00',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
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
                padding: EdgeInsets.only(left: 350,top: 50),
                child: Container(
                  height: 0,
                  child: ElevatedButton(

                    onPressed: (){},
                    child: Icon(Icons.more_vert,),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:630),
                  child: GestureDetector(
                    child: Container(
                      color: Colors.white.withOpacity(0.06),
                      width: 800,
                      height: 51,
                      child: Center(
                        child: RichText(
                        text:TextSpan(
                          children: [
                            TextSpan(
                              text:'       ^\n',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          TextSpan(
                          text:'RESPONDER',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                        ),
                      ),
                      ),
                    ),
                    onTap: (){
                      setState(() {

                      });
                    },
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top:30),
                child: Container(
                  color: Colors.white,
                  width: 800,
                  height: 3,
                  child: LinearProgressIndicator(
                    value: controller.value,
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),

                  ),
                ),
              )

            ],
          ),
        ],
      ),
    );

  }
}
