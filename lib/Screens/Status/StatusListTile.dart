import 'package:flutter/material.dart';

class StatusListTile extends StatefulWidget {
  @override
  _StatusListTileState createState() => _StatusListTileState();
}

class _StatusListTileState extends State<StatusListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
      Padding(
        padding: EdgeInsets.only(top:5),
        child: Column(
          children:<Widget>[

            Stack(
              children: [
                Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              width: 50,
              child:CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(''),
              ),
            ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.only(top: 30),
                  width: 15,
                  child:CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage('https://icon-library.com/images/add-icon/add-icon-16.jpg'),
                  ),
                ),
                ],
            ),
            ],
            ),
        ),
      title: Text("Meu Status",style: TextStyle(color: Colors.white,fontSize: 18),),
      subtitle: Text('Toque para atualizar seu status',style: TextStyle(color:Colors.white60,fontSize: 15),),
      tileColor: Colors.blueGrey.shade900,
      onTap: () {},

    );
  }
}
