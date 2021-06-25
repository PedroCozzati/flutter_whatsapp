import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/TelaContaNova/firstTime.dart';

class ConfigTileAjuda extends StatefulWidget {

  @override
  _ConfigTileAjudaState createState() => _ConfigTileAjudaState();
}

class _ConfigTileAjudaState extends State<ConfigTileAjuda> {
  final String label = 'Ajuda';
  final String sub = 'Central de ajuda, fale conosco, política de\nprivacidade';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
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
              Icons.help_outline,
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
