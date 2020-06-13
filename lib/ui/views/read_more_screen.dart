import 'package:flutter/material.dart';

class ReadMoreScreen extends StatelessWidget {
  String name;
  String description;

  ReadMoreScreen({this.name, this.description});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          '$name',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: size.width / 40),
            child: Icon(
              Icons.share,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  top: size.height / 40,
                  left: size.width / 20,
                  right: size.width / 20,
                  bottom: size.height / 40),
              child: Text(
                '$description',
                textAlign: TextAlign.justify,
                style:
                    TextStyle(color: Colors.black, fontSize: size.width / 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height / 40,
                  left: size.width / 20,
                  right: size.width / 20,
                  bottom: size.height / 40),
              child: Text(
                '$name',
                textAlign: TextAlign.start,
                style:
                    TextStyle(color: Colors.black, fontSize: size.width / 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
