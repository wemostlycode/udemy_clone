import 'package:flutter/material.dart';
import 'package:udemy_clone/core/model/category_model.dart';
import 'package:udemy_clone/core/model/course_details.dart';
import 'package:udemy_clone/core/utils/constants.dart';
import 'package:udemy_clone/ui/views/category_detail.dart';

class SearchScreen extends StatelessWidget {
  List<CategoryModel> categoriesList = Constants.categoriesList();
  List<CourseDetails> courseDetails = Constants.initializeCourseDetailsItem();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Search',
          style: TextStyle(color: Colors.white),
        ),
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
      body: Container(
        height: size.height,
        width: size.width,
        margin: EdgeInsets.only(left: size.width / 40, right: size.width / 40),
        child: ListView.builder(
          itemCount: categoriesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                top: size.height / 90,
                left: size.width / 30,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CategoryDetailPage(
                      index: index,
                      categoryList: categoriesList,
                      courseDetails: courseDetails,
                    );
                  }));
                },
                child: Container(
                  width: size.width,
                  height: size.height / 20,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        categoriesList[index].categoryIcon,
                        size: size.width / 20,
                      ),
                      SizedBox(
                        width: size.width / 30,
                      ),
                      Text(
                        categoriesList[index].categoryName,
                        style: TextStyle(fontSize: size.width / 28),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
