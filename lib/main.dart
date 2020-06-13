import 'package:flutter/material.dart';
import 'package:udemy_clone/ui/views/splash_screen.dart';
import 'package:udemy_clone/ui/views/udemy_home_screen.dart';

void main() => runApp(UdemyApp());

class UdemyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => UdemyHomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Udemy',
      home: SplashScreen(),
    );
  }
}
