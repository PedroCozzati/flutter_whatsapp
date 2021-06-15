import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Contatos/listContatos.dart';

class PageContatos extends StatefulWidget {
  @override
  _PageContatosState createState() => _PageContatosState();
}

class _PageContatosState extends State<PageContatos> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey.shade900,
        title:
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: ' Contatos ',
                    style: TextStyle(
                    color: Colors.white,fontSize: 20)),
                  TextSpan(
                    text: '\n  2  contatos ',
                    style: TextStyle(color: Colors.white)),
                  ]),
              ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: (){}
          )
        ],
        ),
      body: ListContatos(),
    );
  }
}
