import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ConversaListaLeft extends StatefulWidget {

  @override
  _ConversaListaLeftState createState() => _ConversaListaLeftState();
}

class _ConversaListaLeftState extends State<ConversaListaLeft> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,right: 250.0),
      child: Container(
        height: 37,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade900,
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom:15.0),
                child: Text('oi',style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
    );
  }
}
