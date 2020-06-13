import 'package:flutter/material.dart';
import 'package:udemy_clone/core/model/course_details.dart';
import 'package:udemy_clone/core/utils/constants.dart';
import 'package:udemy_clone/ui/shared/course_list_detail_widget.dart';

class WishlistScreen extends StatelessWidget {
  List<CourseDetails> courseDetails = Constants.initializeCourseDetailsItem();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Wishlist', style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: size.width / 27, top: size.height / 84),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return CourseListDetailWidget(
              courseDetailsItem: courseDetails[index],
            );
          },
        ),
      ),
    );
  }
}
