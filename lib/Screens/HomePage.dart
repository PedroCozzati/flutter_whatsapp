import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Chamadas/ListChamadas.dart';
import 'Camera/PageCamera.dart';
import 'Status/ListStatus.dart';
import 'Conversas/listConversas.dart';

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}
class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
      length: 4,
      initialIndex: 1,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          bottom: TabBar(

            unselectedLabelColor: Colors.white70,
            labelColor: Colors.tealAccent,
            isScrollable: true,

            indicatorColor: Colors.tealAccent,
            labelPadding: EdgeInsets.symmetric(horizontal: 16.0,vertical:0.5),
            tabs: [
              Tab(icon: Icon(Icons.camera_alt_rounded),
               ),
              Tab(
                child: Row(
                  children:<Widget>[
                  Text(
                      'CONVERSAS '
                  ),
                  Icon(
                    Icons.circle, size: 19,
                  ),
                  ],
                ),

          ),
            Tab(
              text:('STATUS')
            ),
            Tab(
              text:('CHAMADAS')
            ),
          ],
          ),
          title: Text('Whatsapp',style:TextStyle(color:Colors.white70)),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white70,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
                icon: Icon(
                    Icons.more_vert,
                    color: Colors.white70,
                ),
                onPressed: (){}
                )
          ],
          ),
        body: TabBarView(
          children: [
            PageCamera(),
            ListConversas(),
            ListStatus(),
            ListChamadas(),
          ],
        ),
      ),
      ),
    );
  }
}
