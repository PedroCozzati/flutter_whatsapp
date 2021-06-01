import 'package:flutter/material.dart';

class AddContatoTile extends StatefulWidget {

  @override
  _AddContatoTileState createState() => _AddContatoTileState();
}

class _AddContatoTileState extends State<AddContatoTile> {
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
          padding: EdgeInsets.only(top: 14,bottom: 0,),
          child:
          Container(
            width: 50,
            child: Icon(Icons.account_circle_sharp,size: 50,color: Colors.tealAccent,)
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 0),
          child:  Row(
            children:[
              Padding(
                padding: const EdgeInsets.only(bottom:5.0),
                child: Text('Novo Contato',style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
            ],
          ),
        ),
          ),
        );
  }
}
