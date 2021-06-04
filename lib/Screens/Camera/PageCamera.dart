import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/HomePage.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Camera.dart';



class PageCamera extends StatefulWidget {
  @override
  _PageCameraState createState() => _PageCameraState();
}

class _PageCameraState extends State<PageCamera> {
  @override

  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed:(){ Navigator.push(context,
          MaterialPageRoute(builder: (context) => CameraTeste()));
          }
    );
  }
}
