import 'package:flutter/material.dart';

class StatusView extends StatefulWidget {

  @override
  _StatusViewState createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
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
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white70,width: 2),
          ),
        ),
      ),
      title: Text("Pedro Cozzati",style: TextStyle(color: Colors.white,fontSize: 18),),
      subtitle: Text('há 10 minutos',style: TextStyle(color:Colors.white60,fontSize: 15),),
      tileColor: Colors.blueGrey.shade900,
      onTap: () {},
    );
  }
}
