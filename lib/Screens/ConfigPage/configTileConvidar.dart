import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/TelaContaNova/firstTime.dart';

class ConfigTileConvidar extends StatefulWidget {

  @override
  _ConfigTileConvidarState createState() => _ConfigTileConvidarState();
}

class _ConfigTileConvidarState extends State<ConfigTileConvidar> {
  final String label = 'Convidar um amigo';
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
              Icons.people,
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

      ),
    );
  }
}
