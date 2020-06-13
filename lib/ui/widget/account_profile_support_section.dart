import 'package:flutter/material.dart';

class AccountProfileSupportSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.white,
      margin: EdgeInsets.only(
          left: size.width / 40,
          right: size.width / 40,
          top: size.height / 80,
          bottom: size.height / 50),
      child: Padding(
        padding: EdgeInsets.only(
          top: size.height / 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 26, right: size.width / 26),
              child: Text(
                'Support',
                style:
                    TextStyle(color: Colors.black, fontSize: size.width / 27),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 26,
                  right: size.width / 26,
                  top: size.height / 26),
              child: Text(
                'Share the Udemy app',
                style:
                    TextStyle(color: Colors.black, fontSize: size.width / 27),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 26,
                  right: size.width / 26,
                  top: size.height / 26),
              child: Text(
                'View Privacy Policy',
                style:
                    TextStyle(color: Colors.black, fontSize: size.width / 27),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 26,
                  right: size.width / 26,
                  top: size.height / 26),
              child: Text(
                'Terms of Use',
                style:
                    TextStyle(color: Colors.black, fontSize: size.width / 27),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 26,
                  right: size.width / 26,
                  top: size.height / 26,
                  bottom: size.height / 80),
              child: Text(
                'View Intellectual Property Policy',
                style:
                    TextStyle(color: Colors.black, fontSize: size.width / 27),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 2.5,
                  top: size.height / 26,
                  bottom: size.height / 70),
              child: Text(
                'SIGN OUT',
                style: TextStyle(
                    color: Colors.redAccent, fontSize: size.width / 26),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
