import 'package:flutter/material.dart';

class ForgotPasswordScreenStep1 extends StatefulWidget {
  final emailId;

  ForgotPasswordScreenStep1({this.emailId});

  @override
  _ForgotPasswordScreenStep1State createState() =>
      _ForgotPasswordScreenStep1State();
}

class _ForgotPasswordScreenStep1State extends State<ForgotPasswordScreenStep1> {
  TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _emailController.text = widget.emailId;
    });
  }

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
                'Reset password',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width / 17),
              ),
            ),
            Text(
              'Enter the email associated with your account and we will send you a link to reset your password',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: size.width / 25),
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
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => SignInEmailScreenStepTwo(
                //       emailid: _emailController.text,
                //     )));
              },
              child: Container(
                margin: EdgeInsets.only(right: size.width / 20),
                height: size.height / 23,
                width: size.width / 3.8,
                color: Colors.white,
                child: Center(
                  child: Text(
                    'Reset password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
