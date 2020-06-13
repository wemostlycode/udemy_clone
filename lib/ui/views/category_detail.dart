import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:udemy_clone/core/model/category_model.dart';
import 'package:udemy_clone/core/model/course_details.dart';
import 'package:udemy_clone/core/utils/constants.dart';
import 'package:udemy_clone/ui/shared/course_list_detail_widget.dart';
import 'package:udemy_clone/ui/views/course_detail.dart';
import 'package:udemy_clone/ui/widget/instructorList.dart';

class CategoryDetailPage extends StatelessWidget {
  int index = 0;
  List<CategoryModel> categoryList;
  List<CourseDetails> courseDetails;

  CategoryDetailPage({this.index, this.categoryList, this.courseDetails});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          Icon(
            Icons.sort,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: deviceWidth / 29, right: deviceWidth / 29),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: deviceWidth / 27, top: deviceHeight / 40),
              child: Text(
                '${categoryList[index].categoryName}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: deviceWidth / 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: deviceHeight / 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceWidth / 27),
              child: Text(
                'Courses to get you started',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: deviceWidth / 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: deviceHeight / 84,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 27),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5, //250
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return _buildCourseListItem(courseDetails, index,
                        deviceHeight, deviceWidth, context);
                  },
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight / 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceWidth / 27),
              child: Text(
                'Featured courses',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: deviceWidth / 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: deviceHeight / 84,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 27),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5, //250
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return _buildCourseListItem(courseDetails, index,
                        deviceHeight, deviceWidth, context);
                  },
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight / 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceWidth / 27),
              child: Text(
                'Popular topics',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: deviceWidth / 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: deviceHeight / 84,
            ),
            buildChipWidget(context),

            SizedBox(
              height: deviceHeight / 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceWidth / 27),
              child: Text(
                'Subcategories',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: deviceWidth / 22,
                    fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
              height: deviceHeight / 84,
            ),

            buildChipWidget(context),

            SizedBox(
              height: deviceHeight / 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceWidth / 27),
              child: Text(
                'Top instructors',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: deviceWidth / 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: deviceHeight / 70,
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceWidth / 27),
              child: InstructorList(),
            ),

            //  SizedBox(
            //   height: deviceHeight / 70,
            // ),

            Padding(
              padding: EdgeInsets.only(left: deviceWidth / 27),
              child: Text('All courses',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 16,
                      fontWeight: FontWeight.bold)),
            ),

            SizedBox(
              height: deviceHeight / 84,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: deviceWidth / 27, bottom: deviceHeight / 84),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CourseListDetailWidget(
                    courseDetailsItem: courseDetails[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChipWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 27),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                for (int i = 0; i < Constants.categoriesList().length / 2; i++)
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 80),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return CategoryDetailPage(
                        //     index: i,
                        //     categoryList: Constants.categoriesList(),
                        //     courseDetails: courseDetails,
                        //   );
                        // }));
                      },
                      child: Chip(
                        backgroundColor: Colors.grey[200],
                        label: Text(Constants.categoriesList()[i].categoryName),
                      ),
                    ),
                  )
              ],
            ),
            Row(
              children: <Widget>[
                for (int i = (Constants.categoriesList().length / 2).toInt();
                    i < Constants.categoriesList().length;
                    i++)
                  Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 80),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return CategoryDetailPage(
                          //     index: i,
                          //     categoryList: Constants.categoriesList(),
                          //     courseDetails: courseDetails,
                          //   );
                          // }));
                        },
                        child: Chip(
                          backgroundColor: Colors.grey[200],
                          label: Text(
                            (Constants.categoriesList()[i].categoryName),
                          ),
                        ),
                      ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseListItem(List<CourseDetails> courseDetails, int index,
      double deviceHeight, double deviceWidth, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: deviceHeight / 50,
      ),
      child: GestureDetector(
        onTap: () {
          //TODO:
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CourseDetailScreen()));
        },
        child: Container(
          width: deviceWidth / 1.2, //240
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: deviceHeight / 4, //150
                width: deviceWidth / 1.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage('assets/course_bg.jpg'),
                        fit: BoxFit.fitHeight)),
              ),
              SizedBox(
                height: deviceHeight / 90,
              ),
              Text(
                '${courseDetails[index].title}',
                maxLines: 2,
                style: TextStyle(fontSize: deviceWidth / 27),
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
                      size: deviceWidth / 23,
                      color: Colors.yellow[800],
                      borderColor: Colors.yellow[800],
                      spacing: 0.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5),
                    child: Text(
                      '${courseDetails[index].ratings}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: deviceWidth / 28),
                    ),
                  ),
                  Text(
                    '(${courseDetails[index].reviewsCount})',
                    style: TextStyle(fontSize: deviceWidth / 29),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Text('₹${courseDetails[index].discountedPrice}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: deviceWidth / 24)),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
