import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/CampoEmoji.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/TextControlller.dart';
import 'package:flutter_whatsapp/Screens/Conversas/Chat/TextField.dart';



class StatusScreen extends StatefulWidget {


  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen>with SingleTickerProviderStateMixin {
  AnimationController controller;
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
                    image: NetworkImage('https://yt3.ggpht.com/a/AATXAJwTwhMXtrKbVCkJBDayqTR74vIVEfT_NR88UQ=s900-c-k-c0xffffffff-no-rj-mo'),
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
                                backgroundImage: NetworkImage('https://yt3.ggpht.com/a/AATXAJwTwhMXtrKbVCkJBDayqTR74vIVEfT_NR88UQ=s900-c-k-c0xffffffff-no-rj-mo'),
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
                              text:'Pedro Cozzati',
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
                      height: 50,
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
                          return TextField(
                            autofocus: true,
                            cursorColor: Colors.white,
                          );
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
