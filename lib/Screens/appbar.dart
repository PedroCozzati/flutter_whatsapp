import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({TabBar bottom}):
        super(
        preferredSize: Size.fromHeight(50),
        child: Container(
          height: 50,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black,Colors.grey])),
          child:Stack(
            children: [
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.maxFinite,
                decoration: BoxDecoration( gradient: LinearGradient(colors: [Colors.black45,Colors.black])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text.rich(TextSpan(
                        text:"\nWhatsapp\n",
                        style: TextStyle(fontSize: 25,color: Colors.white38,fontWeight: FontWeight.bold),
                        children:[
                          TextSpan(
                            text: "2",
                            style: TextStyle(fontSize: 11,color: Colors.white38),

                          )
                        ]
                    )),
                    Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(12),
                      ),
                    child: Icon(
                      Icons.search
                    ),
                    ),

                  ],
                ),
              ),
              Align(
                alignment: Alignment(0.0,3.6),
              ),
            ],
          ),
        ),
      );
}
