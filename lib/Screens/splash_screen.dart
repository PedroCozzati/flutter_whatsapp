import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Screens/TelaContaNova/first_time.dart';
import 'dart:async';
import '../main.dart';
import 'home_page.dart';
import 'TelaContaNova/first_time.dart';

class Splash extends StatefulWidget{
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat();
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 8);
    return Timer(duration, route);
  }

  route() {
    Navigator.popAndPushNamed(context, '/pageOne');
  }



  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: 900,
          height: 700,
          color: Colors.blueGrey.shade900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex:2,
                child: Container(
                  width:250,
                height:300,
                child:
                  Image.network('https://logospng.org/download/whatsapp/logo-whatsapp-preto-branco-1024.png'),
                ),
              ),
              Container(
                width: 300,
                height: 200,
                child:Column(
                children: [
                  Text(
                    'Flutter Whatsapp\n',
                    style:
                    TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:30.0),
                    child: CircularProgressIndicator(
                      value: controller.value,
                      semanticsLabel: 'Linear progress indicator',
                    ),
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
    );
  }
}
class MySplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: <String, WidgetBuilder>{
        '/pageOne': (BuildContext context) => new FirstScreen(myName: '',),
      },
    ),
    );
  }
}