import 'package:flutter/material.dart';



class Chamada extends StatefulWidget {

  @override
  _ChamadaState createState() => _ChamadaState();
}

class _ChamadaState extends State<Chamada> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Stack(
            children:[
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Container(
                  color: Colors.grey.shade900,
                  width: 1200,
                  height: 630,

                  child: Image(
                      image: NetworkImage('https://yt3.ggpht.com/a/AATXAJwTwhMXtrKbVCkJBDayqTR74vIVEfT_NR88UQ=s900-c-k-c0xffffffff-no-rj-mo'),
                      width: 100,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:0),
                child: Container(
                  color: Colors.teal.shade700,
                  width: 800,
                  height: 160,
                  child: SizedBox(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15.0,top: 20),
                          child: RichText(
                            text:TextSpan(
                              children: [
                                TextSpan(
                                  text:'Whatsapp\n',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18,
                                  ),
                                ),
                                TextSpan(
                                  text:'Pedro Cozzati',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 36,
                                  ),
                                ),
                                TextSpan(
                                  text:'\nCHAMANDO',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100,top: 52),
                child: Icon(
                     Icons.call,
                     size: 20,
                    color:Colors.white70,),
                  ),
              Padding(
                padding: EdgeInsets.only(left: 180,top: 480),
                child: FloatingActionButton(
                  onPressed: (){
                    Navigator.pop(
                    context
                  );},
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.call_end_rounded,
                    size: 30,
                    color:Colors.white,
                    ),

                ),
              ),

              Padding(
                padding: EdgeInsets.only(top:573),
                child: Container(
                  color: Colors.teal.shade700,
                  width: 800,
                  height: 110,
                  child: SizedBox(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:50.0,top: 10),
                          child: Icon(
                            Icons.volume_up_rounded,
                            color: Colors.white70,
                            size:35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:105.0,top: 10),
                          child: Icon(
                            Icons.messenger,
                            color: Colors.white70,
                            size:35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:97.0,top: 10),
                          child: Icon(
                            Icons.mic_off_rounded,
                            color: Colors.white70,
                            size:35,
                          ),
                        ),

                      ],
                    ),
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
