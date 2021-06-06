import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      width: 1200,
      height: 603.4,

      child: Image(
          image: NetworkImage('https://th.bing.com/th/id/R8a814aa89f8c72a455d860b9ab50e3d1?rik=TjPdbWk%2bul%2b%2frA&pid=ImgRaw'),
          fit: BoxFit.fill
      ),
    );
  }
}
