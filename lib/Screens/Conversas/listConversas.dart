import 'package:flutter/material.dart';

import 'ConversaListTile.dart';


class ListConversas extends StatefulWidget {

  @override
  _ListConversasState createState() => _ListConversasState();
}
class _ListConversasState extends State<ListConversas> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey.shade900,
        child:ListView(
            children:<Widget>[
                ConversaTile(),
                Divider(
                  indent: 80,
                  endIndent: 10,
                  height: 1,
                  thickness: 0.13,
                  color:Colors.blueGrey.shade50,
                ),
                ConversaTile(),
                Divider(
                  indent: 80,
                  endIndent: 10,
                  height: 1,
                  thickness: 0.13,
                  color:Colors.blueGrey.shade50,
                ),
                ConversaTile(),
        ],
    ),
        ),
      floatingActionButton:FloatingActionButton(
          child:Icon(
              Icons.message
          ),
          backgroundColor: Colors.teal.shade300,
          onPressed: (){}),
    );
  }
}
