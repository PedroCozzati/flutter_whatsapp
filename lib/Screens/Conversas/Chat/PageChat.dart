import 'package:flutter/material.dart';


import 'ChatBody.dart';

class Chat extends StatefulWidget {


  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Container(
          child: Row(
            children: [
              Icon(
                Icons.account_circle
              ),
              Text(
                'TESTE'
              ),
            ],
          ),
        ),
      ),
      body: ChatBody(),
    );
  }
}
