import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:udemy_clone/core/model/course_details.dart';
import 'package:udemy_clone/core/utils/constants.dart';
import 'package:udemy_clone/ui/views/read_more_screen.dart';
import 'package:udemy_clone/ui/widget/contact_details_widget.dart';
import 'package:udemy_clone/ui/widget/instructor_profile_data_widget.dart';

class InstructorProfileScreen extends StatefulWidget {
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

  InstructorProfileScreen(
      {this.name,
      this.studentsCount,
      this.coursesCount,
      this.ratings,
      this.image});

  @override
  _InstructorProfileScreenState createState() =>
      _InstructorProfileScreenState();
}

class _InstructorProfileScreenState extends State<InstructorProfileScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    courseDetails = Constants.initializeCourseDetailsItem();
  }

  List<CourseDetails> courseDetails = [];
  String dummyText =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          '${widget.name}',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width / 40),
            child: Icon(
              Icons.share,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InstructorProfileDataWidget(
            name: widget.name,
            studentsCount: widget.studentsCount,
            coursesCount: widget.coursesCount,
            ratings: widget.ratings,
            image: widget.image,
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 40,
                left: MediaQuery.of(context).size.width / 40,
                right: MediaQuery.of(context).size.width / 40),
            child: Text(
              'Courses by ${widget.name}',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 23,
                  color: Colors.grey),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 40,
                top: MediaQuery.of(context).size.height / 80),

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4, //250
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: courseDetails.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 80,
                  ),
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        '${widget.image}',
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.height / 10,
                        fit: BoxFit.fitWidth,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 80,
                            left: MediaQuery.of(context).size.width / 45),
                        child: Text(
                          '${courseDetails[index].title}',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 90,
                            left: MediaQuery.of(context).size.width / 45),
                        child: Row(
                          children: <Widget>[
                            SmoothStarRating(
                                allowHalfRating: false,
                                starCount: 5,
                                rating: 4.5,
                                size: MediaQuery.of(context).size.width / 25,
                                color: Colors.yellow[800],
                                borderColor: Colors.yellow[800],
                                spacing: 0.0),
                            Text(
                              '(${courseDetails[index].reviewsCount})',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 29),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 90,
                            left: MediaQuery.of(context).size.width / 45),
                        child: Row(
                          children: <Widget>[
                            Text('₹${courseDetails[index].discountedPrice}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            28)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '₹${courseDetails[index].originalPrice}',
                              style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
                // return _buildCourseListItem(courseDetails, index);
              },
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 60),
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 7,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 60,
                    left: MediaQuery.of(context).size.width / 25,
                    right: MediaQuery.of(context).size.width / 25,
                  ),
                  child: Text(
                    dummyText,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width / 25),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReadMoreScreen(
                                  name: widget.name,
                                  description: dummyText,
                                )));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 40),
                    child: Text(
                      'READ MORE',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: MediaQuery.of(context).size.width / 28),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 80),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Contact',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 24),
                  ),
                ),
                ContactDetailsWidget(
                  title: 'LinkedIn',
                  link: 'https://linkedin.com/company/bring-your-own-laptop',
                ),
                ContactDetailsWidget(
                  title: 'Youtube',
                  link: 'https://linkedin.com/company/bring-your-own-laptop',
                ),
                ContactDetailsWidget(
                  title: 'Website',
                  link: 'https://linkedin.com/company/bring-your-own-laptop',
                ),
                ContactDetailsWidget(
                  title: 'Twitter',
                  link: 'https://linkedin.com/company/bring-your-own-laptop',
                ),
                ContactDetailsWidget(
                  title: 'Facebook',
                  link: 'https://linkedin.com/company/bring-your-own-laptop',
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
