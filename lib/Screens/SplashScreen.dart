import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


import 'HomePage.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaSplash(),
    );
  }
}

class TelaSplash extends StatefulWidget {

  @override
  _TelaSplashState createState() => _TelaSplashState();
}

class _TelaSplashState extends State<TelaSplash> {
  @override
  Widget build(BuildContext context) {
    return _introScreen(
    );
  }
}

Widget _introScreen() {
  return Material(
    child: Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 9,
          gradientBackground: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blueGrey.shade900,
              Colors.blueGrey.shade800,
            ],
          ),
          navigateAfterSeconds: Whatsapp(),
          loaderColor: Colors.transparent,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://pngimg.com/uploads/whatsapp/whatsapp_PNG95153.png"),
              fit: BoxFit.scaleDown, scale: 6,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:125.0,top:470),
          child: Container(
            height: 400,
            width: 500,
            child: Text.rich(
              TextSpan(
                  text:'Flutter Whatsapp',
                style: TextStyle(fontSize: 20,color: Colors.blueGrey),
            ),
            ),
          ),
        )
      ],
    ),
  );
}
