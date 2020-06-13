import 'dart:async';

import 'package:flutter/material.dart';
import 'package:udemy_clone/ui/views/slider_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    startTimer();
  }

  startTimer() async {
    return new Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => SliderScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width / 2,
              height: size.height / 4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/udemy_icon.png'))),
            ),
          ),
          Text(
            'Flutter learn',
            style: TextStyle(
                fontSize: size.width / 10, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
