import 'package:flutter/material.dart';
import 'package:udemy_clone/core/model/course_overview_model.dart';
import 'package:udemy_clone/ui/widget/course_overview_widget.dart';

class AllViewedCourseScreen extends StatefulWidget {
  final List<CourseOverviewModel> courseOverviewList;

  const AllViewedCourseScreen({Key key, this.courseOverviewList})
      : super(key: key);

  @override
  _AllViewedCourseScreenState createState() => _AllViewedCourseScreenState();
}

class _AllViewedCourseScreenState extends State<AllViewedCourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text(
          'Adobe Illustrator CC - Advanced Training Course',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: ListView.separated(
        itemCount: widget.courseOverviewList.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 12, right: 12),
              child: CourseOverviewWidget(
                title: widget.courseOverviewList[index].getTitle,
                ratings: widget.courseOverviewList[index].getRatings,
                reviewsCount: widget.courseOverviewList[index].getReviewsCount,
                instructorName:
                    widget.courseOverviewList[index].getInstructorName,
                originalPrice:
                    widget.courseOverviewList[index].getOriginalPrice,
                discountedPrice:
                    widget.courseOverviewList[index].getDiscountedPrice,
                isFree: widget.courseOverviewList[index].getIsFree,
              ));
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
