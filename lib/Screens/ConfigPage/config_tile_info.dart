import 'package:flutter/material.dart';


class ConfigTileInfo extends StatefulWidget {

  @override
  _ConfigTileInfoState createState() => _ConfigTileInfoState();
}

class _ConfigTileInfoState extends State<ConfigTileInfo> {
  final String label = 'Flutter';
  final String sub = 'Whatsapp';
  @override

  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white70,fontSize: 15),
              )
      ),
    );
  }
}
