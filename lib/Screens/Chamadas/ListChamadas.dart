import 'package:flutter/material.dart';


import 'ChamadaListTile.dart';

class ListChamadas extends StatefulWidget {

  @override
  _ListChamadasState createState() => _ListChamadasState();
}
class _ListChamadasState extends State<ListChamadas> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey.shade900,
        child:ListView(
          children:<Widget>[
            ChamadaTile(),
            Divider(
              indent: 80,
              endIndent: 10,
              height: 2,
              thickness: 0.13,
              color:Colors.blueGrey.shade50,
            ),
            ChamadaTile(),
            Divider(
              indent: 80,
              endIndent: 10,
              height: 2,
              thickness: 0.13,
              color:Colors.blueGrey.shade50,
            ),
            ChamadaTile(),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
          child:Icon(
              Icons.add_ic_call
          ),
          backgroundColor: Colors.teal.shade300,
          onPressed: (){
           }),
    );
  }
}
