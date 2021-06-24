import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/TelaContaNova/firstTime.dart';

class ConfigTileP extends StatefulWidget {

  @override
  _ConfigTilePState createState() => _ConfigTilePState();
}

class _ConfigTilePState extends State<ConfigTileP> {
  final List nome = [
    FirstScreen(myName: 'Pedro Henrique',)
  ];
  @override

  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: ListTile(
        trailing:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Icon(
              Icons.qr_code_outlined,
              color: Colors.white60,
            ),
          ],
        ),
        onTap: (){
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Chat(mensagem: '',)),
          // );
        },
        leading:
        Padding(
          padding: EdgeInsets.only(top: 0,bottom: 5),
          child:
          Container(
            width: 60,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/R08ffa13510511cec2c6997cb752001f3?rik=Rb%2fGiy%2fa3cp0Tw&pid=ImgRaw'
              ),
            ),
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top:18,bottom: 0),
          child:  Row(
            children:[
              Padding(
                padding: const EdgeInsets.only(bottom:5.0),
                child: Text(nome[0].myName,style: TextStyle(color: Colors.white,fontSize: 18),),
              ),

            ],
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Row(
            children:[
              Padding(
                padding: const EdgeInsets.only(bottom:10.0),
                child: Text('recado',style: TextStyle(color: Colors.white70,fontSize: 15),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
