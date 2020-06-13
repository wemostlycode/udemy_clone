import 'package:flutter/material.dart';
import 'package:udemy_clone/ui/views/signin_email_screen_step_1.dart';
import 'package:udemy_clone/ui/views/signup_screen.dart';
import 'package:udemy_clone/ui/views/udemy_home_screen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInContent(),
      backgroundColor: Colors.redAccent,
    );
  }
}

class SignInContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: size.height / 10,
        ),
        child: Container(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width / 19),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              InkWell(
                onTap: () {
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (_) => UdemyHomeScreen()));

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => SignInEmailScreenStepOne()));
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 15,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.mail_outline,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: size.width / 40,
                      ),
                      Text(
                        'Sign in with email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width / 28),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height / 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 1,
                      color: Colors.white,
                      width: size.width / 2.4,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('or', style: TextStyle(color: Colors.white)),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 1,
                      color: Colors.white,
                      width: size.width / 2.4,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => UdemyHomeScreen()));
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 15,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/google_icon.png',
                        width: size.width / 15,
                        fit: BoxFit.fitWidth,
                      ),
                      //Icon(Icons.mail_outline,color: Colors.red,),
                      SizedBox(
                        width: size.width / 40,
                      ),
                      Text(
                        'Sign in with Google',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width / 28),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => UdemyHomeScreen()));
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 15,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/facebook_icon.png',
                        width: size.width / 15,
                        fit: BoxFit.fitWidth,
                      ),
                      //Icon(Icons.mail_outline,color: Colors.red,),
                      SizedBox(
                        width: size.width / 40,
                      ),
                      Text(
                        'Sign in with Facebook',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width / 28),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SignUpScreen()));
                },
                child: Padding(
                  padding: EdgeInsets.only(top: size.height / 10),
                  child: RichText(
                    text: TextSpan(
                      text: 'New here? ',
                      style: TextStyle(
                          color: Colors.white, fontSize: size.width / 25),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Create an account',
                            style: TextStyle(
                                fontSize: size.width / 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 5,
              ),
              Text(
                'Terms of Use',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
