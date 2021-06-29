import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/conversa.dart';
import 'package:flutter_whatsapp/Screens/Chamadas/chamada.dart';
import 'package:flutter_whatsapp/Screens/home_page.dart';
import '../../../main.dart';
import 'chat_body.dart';

class Chat extends StatefulWidget {
  const Chat ({required this.mensagem,required this.profileImage, required this.label,required this.messages,required this.count,required this.cameras});

  final String mensagem;
  final String label;
  final String profileImage;
  final List messages;
  final int count;
  final List<CameraDescription> cameras;

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async { Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Whatsapp(cameras: cameras,)),
      );
      return false;
      },
      child:  Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.videocam_rounded,
              color: Colors.white70,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
              icon: Icon(
                Icons.call,
                color: Colors.white70,
              ),
              onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chamada(label: widget.label,bg: 1,)),
              );}
          ),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white70,
              ),
              onPressed: (){
                setState(() {

                });
              }
          )
        ],
        backgroundColor: Colors.blueGrey.shade900,
        title: Padding(
          padding: const EdgeInsets.only(right:0.0),
          child: Container(
            height: 200,
              child: Row(
                children: [
                  Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(widget.profileImage),
                          ),
                        ),
                      ),
                  Text(
                    widget.label
                  ),
                ],
              ),
            ),
            ),
      ),
      body: ChatBody(mensagem: widget.mensagem,label: widget.label,messages: [(Conversa(data: DateTime.now(),id:12 ,mensagem: widget.mensagem))],count:widget.count+1),
      ),
    );
  }
}
