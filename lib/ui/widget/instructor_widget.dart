import 'package:flutter/material.dart';
import 'package:udemy_clone/ui/views/instructor_profile.dart';

class InstructorWidget extends StatefulWidget {
  final String instructorName;
  final String instructorImage;
  final String students;
  final String courses;
  final String rating;

  const InstructorWidget(
      {Key key,
      this.instructorName,
      this.instructorImage,
      this.students,
      this.courses,
      this.rating})
      : super(key: key);

  @override
  _InstructorWidgetState createState() => _InstructorWidgetState();
}

class _InstructorWidgetState extends State<InstructorWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 2,
      margin: EdgeInsets.only(left: 12, right: 12),
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        width: size.width,
        margin: EdgeInsets.only(left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Created by ${widget.instructorName}',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: size.width / 23),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  widget.instructorImage, height: size.height / 10, //150
                  width: size.width / 4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: Colors.grey[500],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '${widget.students} ',
                            style: TextStyle(
                                color: Colors.black, fontSize: size.width / 26),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Students',
                                  style: TextStyle(color: Colors.grey[700])),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.library_books, color: Colors.grey[500]),
                        SizedBox(
                          width: 8,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '${widget.courses} ',
                            style: TextStyle(
                                color: Colors.black, fontSize: size.width / 26),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Courses',
                                  style: TextStyle(color: Colors.grey[700])),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star_border, color: Colors.grey[500]),
                        SizedBox(
                          width: 8,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '${widget.rating} ',
                            style: TextStyle(
                                color: Colors.black, fontSize: size.width / 26),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Rating',
                                  style: TextStyle(color: Colors.grey[700])),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InstructorProfileScreen(
                        name: widget.instructorName,
                        studentsCount: widget.students,
                        coursesCount: widget.courses,
                        ratings: widget.rating,
                        image: widget.instructorImage,
                      ),
                    ));
              },
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'VIEW PROFILE',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: size.width / 26,
                    fontWeight: FontWeight.w600,
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
