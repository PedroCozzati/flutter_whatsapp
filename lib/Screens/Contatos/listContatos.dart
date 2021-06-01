import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Contatos/AddContatoTile.dart';

import 'ContatoListTile.dart';


class ListContatos extends StatefulWidget {

  @override
  _ListContatosState createState() => _ListContatosState();
}
class _ListContatosState extends State<ListContatos> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey.shade900,
        child:ListView(
            children:<Widget>[
                AddContatoTile(),

                ContatosTile(),

                ContatosTile(),
        ],
    ),
        ),

    );
  }
}
