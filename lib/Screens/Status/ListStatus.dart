import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Status/StatusListTileText.dart';
import 'package:flutter_whatsapp/Screens/Status/StatusOld.dart';

import 'StatusListTile.dart';

class ListStatus extends StatefulWidget {

  @override
  _ListStatusState createState() => _ListStatusState();
}

class _ListStatusState extends State<ListStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey.shade900,
        child:ListView(
          children:<Widget>[
            StatusListTile(),
            Divider(
              height:1,
              thickness: 0.13,
              color:Colors.blueGrey.shade900,
            ),
            StatusText(),
            Divider(
              height: 0.1,
              thickness: 0.1,
              indent: 85,
              endIndent: 10,
              color:Colors.blueGrey.shade900,
            ),
            StatusView(),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
          child:Icon(
              Icons.camera_alt_rounded,
          ),
          backgroundColor: Colors.teal.shade300,
          onPressed: (){}),
    );
  }
}
