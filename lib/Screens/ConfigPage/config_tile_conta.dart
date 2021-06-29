import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/TelaContaNova/first_time.dart';

class ConfigTileN extends StatefulWidget {

  @override
  _ConfigTileNState createState() => _ConfigTileNState();
}

class _ConfigTileNState extends State<ConfigTileN> {
  final List nome = [
    FirstScreen(myName: 'Conta',)
  ];
  @override

  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListTile(
        onTap: (){
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Chat(mensagem: '',)),
          // );
        },
        leading:
        Padding(
          padding: EdgeInsets.only(top: 15,bottom: 5),
          child:
          Container(
            width: 30,
            child: Icon(
              Icons.vpn_key,
              color: Colors.white60,
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
                child: Text('Privacidade, segurança, mudar número',style: TextStyle(color: Colors.white70,fontSize: 15),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
