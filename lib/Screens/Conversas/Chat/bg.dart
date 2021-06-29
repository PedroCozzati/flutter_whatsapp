import 'package:flutter/material.dart';

class BackgroundImage extends StatefulWidget {
  const BackgroundImage ({required this.image});
  final String image;

  @override
  _BackgroundImageState createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: 1200,
            height: 603.4,
            child: Image(
                image: NetworkImage(widget.image),
              fit: BoxFit.fill,
      ),
    );
  }
}
