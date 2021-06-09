import 'package:flutter/material.dart';

class ConversaListaRight extends StatefulWidget {
  const ConversaListaRight({String m}) ;

  @override
  _ConversaListaState createState() => _ConversaListaState();
}

class _ConversaListaState extends State<ConversaListaRight> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,left: 250.0),
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
            child: Text('Oi',style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
