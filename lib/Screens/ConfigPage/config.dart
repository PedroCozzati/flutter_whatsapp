import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/config_tile_ajuda.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/config_tile_armazenamento.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/config_tile_conversas.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/config_tile_convidar.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/config_tile_info.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/config_tile_me.dart';




import 'config_tile_conta.dart';
import 'config_tile_notificacoes.dart';

class Config extends StatefulWidget {


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
                  ConfigTileArmazenamento(),
                  Container(height: 20,),
                  ConfigTileAjuda(),
                  Container(height: 35,),
                  Divider(
                    height: 0.5,
                    thickness: 0.2,
                    color: Colors.white70,
                  ),
                  ConfigTileConvidar(),
                  Container(height: 20,),
                  ConfigTileInfo(),
              ],
            )
        ),
      )
      );
  }

}
