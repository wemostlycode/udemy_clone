import 'package:flutter/material.dart';

class ContactDetailsWidget extends StatelessWidget {
  @required
  String title;
  @required
  String link;

  ContactDetailsWidget({this.title, this.link});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 20,
          top: MediaQuery.of(context).size.height / 50),
      child: Row(
        children: <Widget>[
          Icon(Icons.mail),
          SizedBox(width: MediaQuery.of(context).size.width / 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$title',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width / 28),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '$link',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: MediaQuery.of(context).size.width / 30),
                ),
                Container(
                  height: 1,
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.grey,
                  width: MediaQuery.of(context).size.width,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
