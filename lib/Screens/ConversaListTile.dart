import 'package:flutter/material.dart';

class ConversaTile extends StatefulWidget {

  @override
  _ConversaTileState createState() => _ConversaTileState();
}

class _ConversaTileState extends State<ConversaTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
      Padding(
        padding: EdgeInsets.only(top:3),
        child:
        Container(
          width: 50,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://yt3.ggpht.com/a/AATXAJwTwhMXtrKbVCkJBDayqTR74vIVEfT_NR88UQ=s900-c-k-c0xffffffff-no-rj-mo'),
          ),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
          ),
        ),
      ),
      title: Text("Pedro Cozzati",style: TextStyle(color: Colors.white,fontSize: 18),),
      subtitle: Text('+TESTE 55 11 977748028...',style: TextStyle(color:Colors.white60,fontSize: 14),),
      tileColor: Colors.blueGrey.shade900,
      onTap: () {},
    );
  }
}
