import 'package:flutter/material.dart';

import 'TextControlller.dart';

class CampoText extends StatefulWidget {


  @override
  _CampoTextState createState() => _CampoTextState();
}

class _CampoTextState extends State<CampoText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

            Container(
                width:50,
                height:35 ,
                child:FloatingActionButton(
                  onPressed: (){
                  },
                  child: Icon(Icons.mic_rounded,size: 20,color: Colors.white,
                  ),
                ),
            ),
    ],
        ),
    ],
    ),
    );
  }
}
