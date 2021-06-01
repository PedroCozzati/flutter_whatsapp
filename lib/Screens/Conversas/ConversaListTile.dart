
import 'package:flutter/material.dart';

import 'Chat/PageChat.dart';

class ConversaTile extends StatefulWidget {

  @override
  _ConversaTileState createState() => _ConversaTileState();
}

class _ConversaTileState extends State<ConversaTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      width: 50,
      child: ListTile(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Chat()),
          );
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
          padding: const EdgeInsets.only(top: 9,bottom: 0),
          child:  Row(
        children:[
        Padding(
        padding: const EdgeInsets.only(bottom:5.0),
        child: Text('Pedro Cozzati',style: TextStyle(color: Colors.white,fontSize: 18),),
      ),
      Padding(
        padding: EdgeInsets.only(left: 161,bottom: 1,top: 1),
        child: Container(
          height: 30,
          width: 40,
          child:Column(
            children: [
              Flexible(
                flex:1,
                    child: Padding(
                      padding: const EdgeInsets.only(top:18.0),
                      child: Container(
                        height: 1,
                        child:IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.circle_notifications,color: Colors.tealAccent,size: 22,),
                        tooltip: 'a',
                      ),
                  ),
                    ),
              ),
              Flexible(
                flex:10,
                child: Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Container(
                    height: 14,
                    child: Text(
                        '00:00',style: TextStyle(fontSize: 13, color: Colors.tealAccent,),
                    ),
                  ),
                ),
              ),

        ],
              ),

          ),
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
              child: Text('+5511977748028',style: TextStyle(color: Colors.white70,fontSize: 15),),
            ),
        ],
          ),
        ),
      ),
    );
  }
}
