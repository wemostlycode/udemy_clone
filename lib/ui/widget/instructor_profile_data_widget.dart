import 'package:flutter/material.dart';

class InstructorProfileDataWidget extends StatelessWidget {
  @required
  String name;
  @required
  String studentsCount;
  @required
  String coursesCount;
  @required
  String ratings;
  @required
  String image;

  InstructorProfileDataWidget(
      {this.name,
      this.studentsCount,
      this.coursesCount,
      this.ratings,
      this.image});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: size.width,
      height: size.height / 3,
      child: Padding(
        padding: EdgeInsets.only(
            top: size.height / 40,
            left: size.width / 20,
            right: size.width / 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: size.height / 9,
              width: size.height / 9,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('$image'))),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height / 80),
              child: Text(
                '$name',
                style:
                    TextStyle(color: Colors.black, fontSize: size.width / 23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.height / 80,
                left: 5,
                right: 5,
              ),
              child: Text(
                'Adobe Certified Instructor & Adobe Certified Expert',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: size.width / 23, color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height / 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '$studentsCount',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width / 23),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Students',
                        style: TextStyle(
                            color: Colors.grey, fontSize: size.width / 25),
                      )
                    ],
                  ),
                  Container(
                    width: 1,
                    height: size.height / 20,
                    color: Colors.grey,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '$coursesCount',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width / 23),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Courses',
                        style: TextStyle(
                            color: Colors.grey, fontSize: size.width / 25),
                      )
                    ],
                  ),
                  Container(
                    width: 1,
                    height: size.height / 20,
                    color: Colors.grey,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '$ratings/5',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width / 23),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Rating',
                        style: TextStyle(
                            color: Colors.grey, fontSize: size.width / 25),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
