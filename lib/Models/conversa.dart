
import 'package:flutter/material.dart';

class Conversa {
  //String user;
  String mensagem;
  int id;
  DateTime data;

  Conversa({required this.mensagem, required this.id, required this.data,});
      //this.data,
      //this.visualizado,
  @override
  String toString() {
    return 'Mensagem{mensagem: $mensagem}';
  }
}