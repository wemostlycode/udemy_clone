import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:udemy_clone/ui/views/course_detail.dart';

class CourseOverviewWidget extends StatefulWidget {
  final String title;
  final String ratings;
  final String reviewsCount;
  final String originalPrice;
  final String discountedPrice;
  final String instructorName;
  final bool isFree;

  const CourseOverviewWidget(
      {Key key,
      @required this.title,
      @required this.ratings,
      @required this.reviewsCount,
      this.originalPrice,
      this.discountedPrice,
      @required this.instructorName,
      this.isFree = false})
      : super(key: key);

  @override
  _CourseOverviewWidgetState createState() => _CourseOverviewWidgetState();
}

class _CourseOverviewWidgetState extends State<CourseOverviewWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        right: size.height / 50,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CourseDetailScreen()));
        },
        child: Container(
          width: size.width / 1.2, //240
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: size.height / 10, //150
                width: size.width / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/course_image.jpg'),
                        fit: BoxFit.fitHeight)),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${widget.title}',
                      maxLines: 2,
                      style: TextStyle(fontSize: size.width / 27),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        SmoothStarRating(
                            allowHalfRating: false,
                            starCount: 5,
                            rating: 4.5,
                            size: size.width / 23,
                            color: Colors.yellow[800],
                            borderColor: Colors.yellow[800],
                            spacing: 0.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5),
                          child: Text(
                            '${widget.ratings}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width / 28),
                          ),
                        ),
                        Text(
                          '(${widget.reviewsCount})',
                          style: TextStyle(fontSize: size.width / 29),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('${widget.instructorName}',
                        style: TextStyle(fontSize: size.width / 29)),
                    SizedBox(
                      height: 5,
                    ),
                    widget.isFree
                        ? Text('Free',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width / 24))
                        : Row(
                            children: <Widget>[
                              Text('₹${widget.discountedPrice}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width / 24)),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '₹${widget.originalPrice}',
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
