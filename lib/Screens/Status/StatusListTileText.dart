import 'package:flutter/material.dart';

class StatusText  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child:Container(
        child: Text('Atualizações vistas',style: TextStyle(color: Colors.white70,fontSize: 15),
        ),
      ),
    );
  }
}
