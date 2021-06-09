import 'package:flutter/material.dart';

import 'TextControlller.dart';

class CampoText extends StatefulWidget {

  @override
  _CampoTextState createState() => _CampoTextState();
}

class _CampoTextState extends State<CampoText> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            width: 50,
            child: FloatingActionButton(
              onPressed: (){},
              child: Icon(
                Icons.mic_rounded,size: 20,color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
