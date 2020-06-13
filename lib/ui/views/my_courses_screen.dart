import 'package:flutter/material.dart';
import 'package:udemy_clone/ui/widget/my_courses_widget.dart';

import 'course_video_screen.dart';

class MyCoursesScreen extends StatefulWidget {
  @override
  _MyCoursesScreenState createState() => _MyCoursesScreenState();
}

class _MyCoursesScreenState extends State<MyCoursesScreen> {
  String dropdownValue = 'All courses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: false,
        title: DropdownButton<String>(
          value: dropdownValue,
          iconDisabledColor: Colors.white,
          iconEnabledColor: Colors.white,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>[
            'All courses',
            'Favorite courses',
            'Archived courses',
            'Downloaded courses'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: MyCoursesBody(),
    );
  }
}

class MyCoursesBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12, top: 12),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CourseVideoScreen(
                                title: 'Flutter - Beginners Course',
                                instructorName: 'Bryan Cairns',
                              )));
                },
                child: MyCoursesWidget(
                  title: 'Flutter - Beginners Course',
                  instructorName: 'Bryan Cairns',
                  courseImage: 'assets/course_image.jpg',
                  isCourseStarted: index % 2 == 0 ? true : false,
                  percentageCompleted: 70,
                ),
              ),
            );
          }),
    );
  }
}
