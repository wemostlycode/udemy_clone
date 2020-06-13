import 'package:flutter/material.dart';
import 'package:udemy_clone/ui/widget/account_profile_preferences_widget.dart';
import 'package:udemy_clone/ui/widget/account_profile_support_section.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Account', style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.white,
              width: size.width,
              height: size.height / 3.5,
              child: Padding(
                padding: EdgeInsets.only(
                    top: size.height / 40,
                    left: size.width / 20,
                    right: size.width / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      size: size.width / 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height / 80),
                      child: Text(
                        'Ashish Rawat',
                        style: TextStyle(
                            color: Colors.black, fontSize: size.width / 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: size.width / 40,
                  right: size.width / 40,
                  bottom: size.height / 80),
              width: size.width,
              height: size.height / 17,
              color: Colors.white,
              child: Center(
                child: Text('Switch to instructor view',
                    style: TextStyle(
                        color: Colors.redAccent, fontSize: size.width / 25)),
              ),
            ),
            AccountProfilePreferencesWidget(),
            AccountProfileSupportSection(),
            Padding(
              padding: EdgeInsets.only(bottom: size.height / 50),
              child: Text(
                'Avalty v0.0.1',
                style: TextStyle(color: Colors.black54),
              ),
            )
          ],
        ),
      ),
    );
  }
}
