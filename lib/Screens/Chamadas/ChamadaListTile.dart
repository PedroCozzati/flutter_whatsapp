
import 'package:flutter/material.dart';

import 'Chamada.dart';


class ChamadaTile extends StatefulWidget {

  @override
  _ChamadaTileState createState() => _ChamadaTileState();
}

class _ChamadaTileState extends State<ChamadaTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      child: ListTile(
        onTap:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Chamada()),
          );
          },
        leading:
        Padding(
          padding: EdgeInsets.only(top: 0,bottom: 5),
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
          child: Row(
            children:[
              Padding(
                padding: const EdgeInsets.only(bottom:5.0),
                child: Text('+5511977748028',style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
              Padding(
                padding: EdgeInsets.only(left: 123,bottom: 20),
                child: Container(
                  height: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:1.0),
                    child: IconButton(
                      onPressed: (){
                        },
                      icon: Icon(Icons.call,color: Colors.tealAccent,size: 20,),
                      tooltip: 'a',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
          children:[
            Padding(
              padding: const EdgeInsets.only(bottom:1.0, top: 1),
              child: Text('28 de maio 20:00',style: TextStyle(color: Colors.white70,fontSize: 15),),
            ),

        ],
          ),
        ),
      ),
    );
  }
}
