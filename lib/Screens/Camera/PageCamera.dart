import 'package:flutter/material.dart';



class PageCamera extends StatefulWidget {
  @override
  _PageCameraState createState() => _PageCameraState();
}

class _PageCameraState extends State<PageCamera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right:160.0),
        child: Container(
          child: FloatingActionButton(
            backgroundColor: Colors.white70,
            onPressed: () {}
    ),
        ),
      )
    );
  }
}
