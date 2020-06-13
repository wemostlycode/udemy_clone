import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:udemy_clone/core/model/course_details.dart';
import 'package:udemy_clone/core/model/course_overview_model.dart';
import 'package:udemy_clone/core/utils/constants.dart';
import 'package:udemy_clone/ui/views/all_viewed_course_screen.dart';
import 'package:udemy_clone/ui/views/categories_list_screen.dart';
import 'package:udemy_clone/ui/views/category_detail.dart';
import 'package:udemy_clone/ui/views/course_detail.dart';
import 'package:udemy_clone/ui/widget/dotsIndicator.dart';

class FeaturedScreen extends StatefulWidget {
  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  List<CourseDetails> courseDetails = [];

  @override
  void initState() {
    super.initState();
    courseDetails = Constants.initializeCourseDetailsItem();
  }

  int _current = 0;
  List<CourseOverviewModel> _courseOverviewList = [
    CourseOverviewModel(
        title: 'Illustrator CC 2018 for beginners : Basics & Tricks',
        ratings: '4.5',
        isFree: true,
        instructorName: 'Khalil Ibrahim',
        reviewsCount: '907'),
    CourseOverviewModel(
      title: 'Graphic Design Masterclass: The Next Level',
      ratings: '4.5',
      reviewsCount: '267',
      isFree: false,
      instructorName: 'Lindsay Marsh',
      discountedPrice: '720.00',
      originalPrice: '11,791.99',
    ),
    CourseOverviewModel(
      title: 'Adobe InDesign CC - Advanced Training Course',
      ratings: '4.9',
      reviewsCount: '767',
      isFree: false,
      instructorName: 'Daniel Walter Scott, Instructor HQ',
      discountedPrice: '720.00',
      originalPrice: '13,101.99',
    ),
    CourseOverviewModel(
      title: 'Adobe InDesign CC - Advanced Training Course',
      ratings: '4.9',
      reviewsCount: '767',
      isFree: false,
      instructorName: 'Daniel Walter Scott, Instructor HQ',
      discountedPrice: '720.00',
      originalPrice: '13,101.99',
    ),
    CourseOverviewModel(
        title: 'Illustrator CC 2018 for beginners : Basics & Tricks',
        ratings: '4.5',
        isFree: false,
        instructorName: 'Khalil Ibrahim',
        reviewsCount: '907'),
    CourseOverviewModel(
        title: 'Illustrator CC 2018 for beginners : Basics & Tricks',
        ratings: '4.5',
        isFree: false,
        instructorName: 'Khalil Ibrahim',
        reviewsCount: '907'),
    CourseOverviewModel(
        title: 'Illustrator CC 2018 for beginners : Basics & Tricks',
        ratings: '4.5',
        isFree: false,
        instructorName: 'Khalil Ibrahim',
        reviewsCount: '907'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Featured', style: TextStyle(color: Colors.white)),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(children: [
              buildCarouselList(),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 2.4),
                child: DotsIndicator(
                  current: _current,
                  listCount: courseDetails.length,
                  selectedColor: Colors.white,
                  normalColor: Colors.transparent,
                  horizontalSpacing: 2,
                ),
              )
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height / 84, //10
            ),
            buildButton(context, _courseOverviewList),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50, //20
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 27,
                  right: MediaQuery.of(context).size.width / 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 21,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      //TODO:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoriesListScreen()));
                    },
                    child: Text(
                      'SEE ALL',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width / 33,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 84, //10
            ),
            buildChipWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            ...List.generate(4, (index) {
              return Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 27),
                    child: Text(
                      'Because you viewed "Kotlin Android Course "',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width / 21,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 84,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 27),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3.3, //250
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return _buildCourseListItem(courseDetails, index);
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  CarouselSlider buildCarouselList() {
    return CarouselSlider(
      height: MediaQuery.of(context).size.height / 4,
      //200
      viewportFraction: 1.0,
      onPageChanged: (index) {
        setState(() {
          _current = index;
        });
      },
      scrollDirection: Axis.horizontal,
      items: courseDetails.map((i) {
        return Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllViewedCourseScreen(
                              courseOverviewList: _courseOverviewList,
                            )));
              },
              child: Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/carousel_bg_updated.jpg')),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 12, //90
                  left: MediaQuery.of(context).size.width / 30,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5, //270
                    child: Column(
                      children: <Widget>[
                        Text(
                          i.title,
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width / 23, //18
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: <Widget>[
                            SmoothStarRating(
                                allowHalfRating: false,
                                starCount: 5,
                                rating: 4.5,
                                size: MediaQuery.of(context).size.width / 23,
                                color: Colors.yellow[800],
                                borderColor: Colors.yellow[800],
                                spacing: 0.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Text(
                                '(${i.reviewsCount})',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 28,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: <Widget>[
                            Text('₹${i.discountedPrice}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            24)),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '₹${i.originalPrice}',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            );
          },
        );
      }).toList(),
    );
  }

  Padding buildButton(
      BuildContext context, List<CourseOverviewModel> _courseOverviewList) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 27,
          right: MediaQuery.of(context).size.width / 27),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AllViewedCourseScreen(
                        courseOverviewList: _courseOverviewList,
                      )));
        },
        child: Container(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 84),
          height: MediaQuery.of(context).size.height / 15,
          //60
          width: MediaQuery.of(context).size.width,
          color: Colors.blueGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Limited-Time Discount',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width / 27),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                '9 hours left!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 25),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCourseListItem(List<CourseDetails> courseDetails, int index) {
    return Padding(
      padding: EdgeInsets.only(
        right: MediaQuery.of(context).size.height / 50,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CourseDetailScreen(
                        courseDetailsItem: courseDetails[index],
                      )));
          //TODO:
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 1.7, //240
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 5.5, //150
                width: MediaQuery.of(context).size.width / 1.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage('assets/course_bg.jpg'),
                        fit: BoxFit.cover)),
              ),
              Text(
                '${courseDetails[index].title}',
                maxLines: 2,
                style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 27),
              ),
              Row(
                children: <Widget>[
                  SmoothStarRating(
                      allowHalfRating: false,
                      starCount: 5,
                      rating: 4.5,
                      size: MediaQuery.of(context).size.width / 23,
                      color: Colors.yellow[800],
                      borderColor: Colors.yellow[800],
                      spacing: 0.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5),
                    child: Text(
                      '${courseDetails[index].ratings}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 28),
                    ),
                  ),
                  Text(
                    '(${courseDetails[index].reviewsCount})',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 29),
                  )
                ],
              ),
              Text('Free')
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChipWidget() {
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CategoryDetailPage(
                            index: i,
                            categoryList: Constants.categoriesList(),
                            courseDetails: courseDetails,
                          );
                        }));
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return CategoryDetailPage(
                              index: i,
                              categoryList: Constants.categoriesList(),
                              courseDetails: courseDetails,
                            );
                          }));
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
}
