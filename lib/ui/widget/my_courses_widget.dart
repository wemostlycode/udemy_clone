import 'package:flutter/material.dart';

class MyCoursesWidget extends StatelessWidget {
  final String title;
  final String instructorName;
  final String courseImage;
  final bool isCourseStarted;
  final int percentageCompleted;

  const MyCoursesWidget(
      {Key key,
      this.title,
      this.instructorName,
      this.courseImage,
      this.isCourseStarted = false,
      this.percentageCompleted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print("Width : ${size.width}");
    print("Width  / 1.5: ${size.width / 1.5}");
    // print("Width : ${size.width}");
    return Padding(
      padding: EdgeInsets.only(
        right: size.height / 50,
      ),
      child: Container(
        width: size.width / 1.2, //240
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: size.height / 12, //150
              width: size.width / 5.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: AssetImage(courseImage), fit: BoxFit.fitHeight)),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$title',
                    maxLines: 2,
                    style: TextStyle(fontSize: size.width / 27),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('$instructorName',
                      style: TextStyle(fontSize: size.width / 29)),
                  SizedBox(
                    height: 16,
                  ),
                  isCourseStarted
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Stack(children: [
                              Container(
                                width: size.width / 1.5,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[200],
                                ),
                              ),
                              Container(
                                width: (size.width / 1.5) *
                                    (percentageCompleted / 100),
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal[200],
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 8,
                            ),
                            Text('$percentageCompleted% completed')
                          ],
                        )
                      : Text(
                          'START COURSE',
                          style: TextStyle(
                              color: Colors.lightBlue[700],
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
