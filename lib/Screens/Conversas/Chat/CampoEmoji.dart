import 'package:flutter/material.dart';

class CampoEmoji extends StatefulWidget {
  const CampoEmoji({Key key}) : super(key: key);

  @override
  _CampoEmojiState createState() => _CampoEmojiState();
}

class _CampoEmojiState extends State<CampoEmoji> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 50,
            width: 40,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey.shade900,
              onPressed: () {},
              child: Icon(
                Icons.emoji_emotions,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
