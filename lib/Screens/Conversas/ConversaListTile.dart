
import 'package:flutter/material.dart';

class ConversaTile extends StatefulWidget {

  @override
  _ConversaTileState createState() => _ConversaTileState();
}

class _ConversaTileState extends State<ConversaTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListTile(
        leading:
        Padding(
          padding: EdgeInsets.only(top: 1),
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
        title: Padding(
          padding: const EdgeInsets.only(top: 14,bottom: 0),
          child: Text.rich(
            TextSpan(
              text:'Pedro Cozzati',
              style: TextStyle(color: Colors.white,fontSize: 18),
                ),
            ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Row(
          children:[
            Padding(
              padding: const EdgeInsets.only(bottom:20.0),
              child: Text('+5511977748028',style: TextStyle(color: Colors.white70,fontSize: 15),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 134,bottom: 12),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom:10.0),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.circle_notifications,color: Colors.tealAccent,size: 20,),
                    tooltip: 'a',
      ),
                ),
              ),
            ),
        ],
          ),
        ),
      ),
    );
  }
}
