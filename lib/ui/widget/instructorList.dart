import 'package:flutter/material.dart';
import 'package:udemy_clone/core/model/instructor_details.dart';
import 'package:udemy_clone/core/utils/constants.dart';

class InstructorList extends StatefulWidget {
  @override
  _InstructorListState createState() => _InstructorListState();
}

class _InstructorListState extends State<InstructorList> {
  List<InstructorDetails> instructorDetails = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    instructorDetails = Constants.initializeInstructorList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              for (int i = 0; i < instructorDetails.length / 2; i++)
                Container(
                  height: 130,
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 50),
                  width: MediaQuery.of(context).size.width / 1.2,
                  // color: Colors.yellow,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/sample_img.jpg'))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 40),
                        child: Container(
                          // color: Colors.red,
                          width: MediaQuery.of(context).size.width / 1.6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '${instructorDetails[i].name}',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '${instructorDetails[i].bio}',
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '${instructorDetails[i].studentsCount} students',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '${instructorDetails[i].coursesCount} courses',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ],
          ),
          Row(
            children: <Widget>[
              for (int i = (instructorDetails.length / 2).toInt();
                  i < instructorDetails.length;
                  i++)
                Container(
                  height: 130,
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 50),
                  width: MediaQuery.of(context).size.width / 1.2,
                  // color: Colors.yellow,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/sample_img.jpg'))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 40),
                        child: Container(
                          // color: Colors.red,
                          width: MediaQuery.of(context).size.width / 1.6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '${instructorDetails[i].name}',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '${instructorDetails[i].bio}',
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '${instructorDetails[i].studentsCount} students',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '${instructorDetails[i].coursesCount} courses',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
