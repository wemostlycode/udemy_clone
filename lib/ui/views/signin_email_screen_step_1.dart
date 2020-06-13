import 'package:flutter/material.dart';
import 'package:udemy_clone/ui/views/signin_email_screen_step_2.dart';

class SignInEmailScreenStepOne extends StatefulWidget {
  @override
  _SignInEmailScreenStepOneState createState() =>
      _SignInEmailScreenStepOneState();
}

class _SignInEmailScreenStepOneState extends State<SignInEmailScreenStepOne> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Padding(
        padding: EdgeInsets.only(top: size.height / 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                'Welcome back!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width / 17),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Enter your email to sign in to your account',
                style:
                    TextStyle(color: Colors.white, fontSize: size.width / 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _emailController,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  focusedBorder: const UnderlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 3.0),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide:
                        const BorderSide(color: Colors.white, width: 0.0),
                  ),

                  border: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white)),

                  labelText: 'Email',
                  // border: InputBorder.none,

                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => SignInEmailScreenStepTwo(
                              emailid: _emailController.text,
                            )));
              },
              child: Container(
                margin: EdgeInsets.only(right: size.width / 20),
                height: size.height / 25,
                width: size.width / 5,
                color: Colors.grey[300],
                child: Center(
                  child: Text('Next'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
