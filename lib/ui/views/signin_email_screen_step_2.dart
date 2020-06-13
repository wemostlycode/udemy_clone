import 'package:flutter/material.dart';
import 'package:udemy_clone/ui/views/forgot_password_screen_step1.dart';

class SignInEmailScreenStepTwo extends StatefulWidget {
  final String emailid;

  SignInEmailScreenStepTwo({this.emailid});

  @override
  _SignInEmailScreenStepTwoState createState() =>
      _SignInEmailScreenStepTwoState();
}

class _SignInEmailScreenStepTwoState extends State<SignInEmailScreenStepTwo> {
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
                'Almost there!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width / 17),
              ),
            ),
            SizedBox(
              height: size.height / 70,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Enter your password to sign in ${widget.emailid}',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontSize: size.width / 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width / 20,
                  right: size.width / 20,
                  top: size.height / 15),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                obscureText: true,
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

                  labelText: 'Password(6+ characters)',
                  // border: InputBorder.none,

                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPasswordScreenStep1(
                                      emailId: widget.emailid,
                                    )));
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: Colors.white70, fontSize: size.width / 25),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/home', (Route<dynamic> route) => false);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          right: size.width / 20, top: size.height / 40),
                      height: size.height / 25,
                      width: size.width / 5,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height / 20,
                  left: size.width / 10,
                  right: size.width / 10),
              child: Text(
                'By clicking on "Sign in" you agree to our terms of Use and Privacy Policy',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white70, fontSize: size.width / 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
