import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:udemy_clone/core/model/intro_slider_model.dart';
import 'package:udemy_clone/ui/views/signin_screen.dart';
import 'package:udemy_clone/ui/views/udemy_home_screen.dart';
import 'package:udemy_clone/ui/widget/dotsIndicator.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int _current = 0;
  List<IntroSliderModel> _introSliderList = [
    IntroSliderModel(
        title: 'Take video courses',
        desc: 'From cooking to coding and everything in between'),
    IntroSliderModel(
        title: 'Learn from experts',
        desc: 'Approachable expert-instructors, vetted by 12 million students'),
    IntroSliderModel(
        title: 'Go at your own pace',
        desc: 'Lifetime access to courses, watch them anytime, anywhere'),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        width: size.width,
        height: size.height / 15,
        color: Colors.blueGrey,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => UdemyHomeScreen()));
                },
                child: Text(
                  'Browse',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width / 23),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => SignInScreen()));
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width / 23),
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          CarouselSlider(
            height: MediaQuery.of(context).size.height,
            //200
            viewportFraction: 1.0,

            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
            scrollDirection: Axis.horizontal,
            items: _introSliderList.map((i) {
              return Builder(
                builder: (context) {
                  return Padding(
                    padding: EdgeInsets.only(top: size.height / 5),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: size.width / 1.7,
                          height: size.height / 3.5,
                          //color: Colors.yellow,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/carousel_bg_updated.jpg'),
                                  fit: BoxFit.fitHeight)),
                        ),
                        SizedBox(
                          height: size.height / 5,
                        ),
                        Text(
                          i.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.width / 20),
                        ),
                        SizedBox(
                          height: size.height / 50,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: size.width / 10, right: size.width / 10),
                          child: Text(i.desc,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: TextStyle(fontSize: size.width / 24)),
                        )
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height / 1.7),
            child: DotsIndicator(
              current: _current,
              listCount: 3,
              selectedColor: Colors.grey,
              normalColor: Colors.grey[300],
              horizontalSpacing: 5,
            ),
          )
        ],
      ),
    );
  }
}
