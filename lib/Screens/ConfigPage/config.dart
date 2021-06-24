import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/configTileArmazenamento.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/configTileConversas.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/configTileMe.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/configTileNotifica%C3%A7%C3%B5es.dart';
import 'package:flutter_whatsapp/Screens/TelaContaNova/firstTime.dart';

import 'configTileConta.dart';

class Config extends StatefulWidget {

  final String myName ='P' ;

  @override
  _ConfigState createState() => _ConfigState();
}


class _ConfigState extends State<Config> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>true,
      child:Scaffold(
        appBar: AppBar(
          title:  Text('Configurações'),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: Container(
            width: 500,
            height: 650,
            color: Colors.blueGrey.shade900,
            child:ListView(
                children:[
                  ConfigTileP(),
                  Divider(
                    height: 0.5,
                    thickness: 0.2,
                    color: Colors.white70,
                  ),
                  ConfigTileN(),
                  Container(height: 20,),
                  ConfigTileConversas(),
                  Container(height: 20,),
                  ConfigTileNotificacao(),
                  Container(height: 20,),
                  ConfigTileArmazenamento()
              ],
            )
        ),
      )
      );
  }

}
