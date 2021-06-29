import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Models/conversa.dart';


class ConversaLista extends StatefulWidget {
  const ConversaLista ({required this.mensagem});
  final String mensagem;

  @override
  _ConversaListaState createState() => _ConversaListaState();
}

class _ConversaListaState extends State<ConversaLista> {
int count = 1;
final String teste = 'Olá Pedro';
final String teste1 = ' boa tarde';

  @override
  Widget build(BuildContext context) {
    List<Conversa> messages = [
      Conversa(mensagem: widget.mensagem, id: 120498598649, data: DateTime.now()),
      Conversa(mensagem:teste ,id:2312 ,data:DateTime.now()),
    ];
    return ListView.builder(
        reverse: true,
        shrinkWrap: true,
        itemCount: messages.length,
        itemBuilder: (context, indice) {
          return Container(
            padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: Align(
              alignment: (messages[indice].id == 120498598649
                  ? Alignment.topRight
                  : Alignment.topLeft),
              child: Container(
                constraints: BoxConstraints(minWidth: 50, maxWidth: 310),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: (messages[indice].id == 120498598649
                      ? Colors.teal.shade900
                      : Colors.blueGrey.shade900),
                ),
                padding: EdgeInsets.all(8),
                child: Container(
                  child: Column(
                    children: [
                      RichText(
                         text:TextSpan(
                            children:[
                              TextSpan(
                                text: (messages[indice].id == 120498598649
                                    ?'${widget.mensagem}': teste+ ','+teste1),style: TextStyle(fontSize: 17, color: Colors.white),
                                ),
                                  ],
                          ),
                      ),
                        SizedBox(
                          width: messages[indice].data.hour.toDouble() + messages[indice].data.minute.toDouble()+12,
                          height: 15,
                          child: Align(
                              alignment: Alignment.bottomCenter,
                                child: Text(
                                      messages[indice].data.hour.toString()+':'+messages[indice].data.minute.toString() ,style: TextStyle(fontSize: 10, color: Colors.white60),
                                    ),
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
void addNewContactRow() {
  setState(() {
    count = count + 1;
  });
}

}