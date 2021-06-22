import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/Conversa.dart';


class ConversaLista extends StatefulWidget {
  const ConversaLista ({required this.mensagem});
  final String mensagem;

  @override
  _ConversaListaState createState() => _ConversaListaState();
}

class _ConversaListaState extends State<ConversaLista> {
  Conversa mensagem =
     Conversa(mensagem:'Boa noite',id:120498598649,data:DateTime.now(),
     );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        reverse: true,
        shrinkWrap: true,
        itemCount: 2 ,
        itemBuilder: (context, indice) {
          return Container(
            padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: Align(
              alignment: (mensagem.id == 120498598649
                  ? Alignment.topRight
                  : Alignment.topLeft),
              child: Container(
                constraints: BoxConstraints(minWidth: 50, maxWidth: 310),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: (mensagem.id == 120498598649
                      ? Colors.teal.shade900
                      : Colors.blueGrey.shade900),
                ),
                padding: EdgeInsets.all(10),
                child: Container(
                  child: Column(
                    children: [
                      RichText(
                         text:TextSpan(
                            children:[
                              TextSpan(
                                text: '${mensagem.mensagem}',style: TextStyle(fontSize: 15, color: Colors.white),
                                ),

                                  ],
                          ),
                      ),
                        SizedBox(
                          width: 25,
                          height: 15,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                mensagem.data.hour.toString()+':'+mensagem.data.minute.toString() ,style: TextStyle(fontSize: 10, color: Colors.white),
                              ),
                              ],
                          ),
                        ),
                    ],
                  ),
                ),
          ),
            ),
          );
        }
    );
  }
}