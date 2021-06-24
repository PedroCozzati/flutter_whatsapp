import 'package:flutter/material.dart';

abstract class FirstConfig extends StatefulWidget {

  String myName;
  String myImg;
  String myNumber;
  String recado;
  int id;

  FirstConfig(
      {required this.myName, required this.myImg, required this.myNumber, required this.recado, required this.id});
}