import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:udemy_clone/core/model/course_details.dart';

class CourseListDetailWidget extends StatelessWidget {
  @required
  final CourseDetails courseDetailsItem;

  CourseListDetailWidget({this.courseDetailsItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width / 50),
      width: MediaQuery.of(context).size.width / 1.2,
      // color: Colors.yellow,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 14,
            width: MediaQuery.of(context).size.height / 14,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/sample_img.jpg'))),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 40),
            child: Container(
              // color: Colors.red,
              width: MediaQuery.of(context).size.width / 1.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${courseDetailsItem.title}',
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 30),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: <Widget>[
                      SmoothStarRating(
                          allowHalfRating: false,
                          starCount: 5,
                          rating: 4.5,
                          size: MediaQuery.of(context).size.width / 25,
                          color: Colors.yellow[800],
                          borderColor: Colors.yellow[800],
                          spacing: 0.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5),
                        child: Text(
                          '${courseDetailsItem.ratings}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width / 30),
                        ),
                      ),
                      Text(
                        '(${courseDetailsItem.reviewsCount})',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 31),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: <Widget>[
                      Text('₹${courseDetailsItem.discountedPrice}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width / 26)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '₹${courseDetailsItem.originalPrice}',
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
