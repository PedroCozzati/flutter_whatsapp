import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/Chamadas/list_chamadas.dart';
import 'package:flutter_whatsapp/Screens/ConfigPage/config.dart';
import 'Camera/page_camera.dart';
import 'Status/list_status.dart';
import 'Conversas/list_conversas.dart';

class Whatsapp extends StatefulWidget {
  final List<CameraDescription>? cameras;
  Whatsapp({this.cameras});

  @override
  _WhatsappState createState() => _WhatsappState();
}
class _WhatsappState extends State<Whatsapp> {

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
        onWillPop: () async => false,
    child: MaterialApp(
      routes: {
        '/config': (context) => Config(),
      },
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
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Config()),
                  );
                }
                )
          ],
          ),
        body: TabBarView(
          children: [
            CameraScreen(widget.cameras!),
            Container(color: Colors.blueGrey.shade900,child: ListConversas()),
            ListStatus(),
            ListChamadas(),
          ],
        ),
      ),
      ),
    ),
    );
  }
}
