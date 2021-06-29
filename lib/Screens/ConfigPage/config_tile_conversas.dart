import 'package:flutter/material.dart';


class ConfigTileConversas extends StatefulWidget {

  @override
  _ConfigTileConversasState createState() => _ConfigTileConversasState();
}

class _ConfigTileConversasState extends State<ConfigTileConversas> {
  final String label = 'Conversas';
  final String sub = 'Tema,papel de parede, histórico de conversas';
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
              Icons.message,
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
                child: Text(label,style: TextStyle(color: Colors.white,fontSize: 18),),
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
                child: Text(sub,style: TextStyle(color: Colors.white70,fontSize: 15),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
