
import 'package:flutter/material.dart';

class ContatosTile extends StatefulWidget {

  @override
  _ContatosTileState createState() => _ContatosTileState();
}

class _ContatosTileState extends State<ContatosTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      width: 50,
      child: ListTile(
        onTap: (){

        },

        leading:
        Padding(
          padding: EdgeInsets.only(top: 0,bottom: 1),
          child:
          Container(
            width: 50,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://yt3.ggpht.com/a/AATXAJwTwhMXtrKbVCkJBDayqTR74vIVEfT_NR88UQ=s900-c-k-c0xffffffff-no-rj-mo'),
            ),
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 14,bottom: 0),
          child:  Row(
        children:[
        Padding(
        padding: const EdgeInsets.only(bottom:5.0),
        child: Text('Pedro Cozzati',style: TextStyle(color: Colors.white,fontSize: 18),),
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
              child: Text('Recado',style: TextStyle(color: Colors.white70,fontSize: 15),),
            ),
        ],
          ),
        ),
      ),
    );
  }
}
