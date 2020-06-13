import 'package:flutter/material.dart';
import 'package:udemy_clone/core/model/course_detail_model.dart';
import 'package:udemy_clone/core/model/course_details.dart';
import 'package:udemy_clone/core/model/course_overview_model.dart';
import 'package:udemy_clone/core/model/review_model.dart';
import 'package:udemy_clone/ui/widget/course_overview_widget.dart';
import 'package:udemy_clone/ui/widget/expanded_widget.dart';
import 'package:udemy_clone/ui/widget/instructor_widget.dart';
import 'package:udemy_clone/ui/widget/rating_widget.dart';
import 'package:udemy_clone/ui/widget/review_widget.dart';
import 'package:udemy_clone/ui/widget/section_detail_widget.dart';

import 'all_reviews_screen.dart';
import 'all_sections_screen.dart';
import 'all_viewed_course_screen.dart';

class CourseDetailScreen extends StatefulWidget {
  final CourseDetails courseDetailsItem;

  CourseDetailScreen({this.courseDetailsItem});

  @override
  _CourseDetailScreenState createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  final _courseIncludesList = [
    CourseDetail(Icons.live_tv, '8 hours on-demand video'),
    CourseDetail(Icons.insert_drive_file, 'Support Files'),
    CourseDetail(Icons.sync_problem, 'Full lifetime access'),
    CourseDetail(
        Icons.mobile_screen_share, 'Access on mobile, desktop, and TV'),
    CourseDetail(Icons.pages, 'Certificate of Completion')
  ];

  List<String> _whatWillILearnList = [
    'You will be able to earn more using these new illustrator skills.',
    'You will create multiple images for you to use in your Portfolio.',
    'You will be able to add \'Advanced Illustrator User\' to your CV',
    '53 Lectures 4+ hours of content',
    'Speed up your productivity & workflow',
  ];

  List<String> _requirementsList = [
    'Any version of Adobe Photoshop, preferably the CC (Creative Cloud) version.',
    'Basic knowledge of illustrator is required. I recommend watching my illustrator Essentials course before this course.',
    'If you know how to draw simple icons & you already know what an anchor point is. Then this course is for you.',
  ];

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
  ];

  List<String> _courseSectionsList = [
    'Overview',
    'Drawing',
    'Keyboard Shortcuts',
    'Workflow Speed',
    'Typography',
    'Overview',
    'Drawing',
    'Keyboard Shortcuts',
    'Workflow Speed',
    'Typography'
  ];

  List<ReviewModel> _reviewModelList = [
    ReviewModel(
        rating: 3,
        review:
            'at this stage, its a lot of repetition from the introduction to illustrator course I did last year. But, I will see what else you have in stock, Dan!',
        time: '2 days ago'),
    ReviewModel(
        rating: 5,
        review:
            'Course was great. Lots of good tips and ideas for all to use. Daniel is a great teacher. Fun too!',
        time: '4 days ago'),
    ReviewModel(
        rating: 5,
        review:
            'Thanks Dan, really enjoyed your course and learned quite a lot from it!',
        time: '5 days ago'),
    ReviewModel(rating: 4, review: 'Good for staying up to date.', time: '2')
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 12),
            child: Icon(Icons.share),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 12),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: size.width,
                  height: size.height / 2.4,
                  color: Colors.black,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 12, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Adobe Illustrator CC - Advanced Training Course',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              // fontSize: 30,
                              fontSize: size.width / 14),
                        ),
                        SizedBox(
                          height: size.height / 82,
                        ),
                        Text(
                          'In this Adobe Illustrator Advanced course we\'ll learn Advanced techniques for graphic design, logo design & illustration',
                          style: TextStyle(
                              color: Colors.white,
                              //fontSize: 16
                              fontSize: size.width / 25),
                        ),
                        SizedBox(
                          height: size.height / 82,
                        ),
                        Row(
                          children: <Widget>[
                            courseDetailsWidget(icon: Icons.star, label: '4.7'),
                            SizedBox(
                              width: 8,
                            ),
                            courseDetailsWidget(
                                icon: Icons.person, label: '10,407 Enrolled'),
                            SizedBox(
                              width: 8,
                            ),
                            courseDetailsWidget(
                                icon: Icons.play_arrow, label: '8 hours')
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: <Widget>[
                            courseDetailsWidget(
                                label:
                                    'Created by Daniel Walter Scott, 1 more'),
                            SizedBox(
                              width: 8,
                            ),
                            courseDetailsWidget(label: 'Updated 07/2019'),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: <Widget>[
                            courseDetailsWidget(
                                label:
                                    'CC, English [Auto-generated], Italian [Auto-generated], 2 more'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: size.height / 3),
                    width: size.width / 1.5,
                    height: size.height / 5.5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/course_image.jpg'),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.play_arrow,
                            size: size.width / 4.5,
                            color: Colors.white,
                          ),
                          Text(
                            'Preview This Course',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width / 22,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height / 40,
                  left: size.width / 30,
                  right: size.width / 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '₹720.00',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            //fontSize: 28
                            fontSize: size.width / 15),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '₹13,101.99',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: size.width / 30,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.timer,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '94% off - 2 days left at this price!',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: size.width / 30,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 12),
                    width: size.width,
                    height: size.height / 15,
                    color: Colors.redAccent,
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width / 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Material(
                        elevation: 2,
                        child: Container(
                          width: size.width / 2.3,
                          height: size.height / 18,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              'ADD TO CART',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: size.width / 32,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(width: 8,),
                      Material(
                        elevation: 2,
                        child: GestureDetector(
                          onTap: () {
                            //TODO: ADD ITEM TO WISHLIST LIST
                          },
                          child: Container(
                            width: size.width / 2.3,
                            height: size.height / 18,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'ADD TO WISHLIST',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: size.width / 32,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 12, right: 12),
                width: size.width,
                height: size.height / 3,
                padding: EdgeInsets.only(
                    left: 4,
                    right: 4,
                    top: size.height / 40,
                    bottom: size.height / 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'This Course Includes',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width / 23),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ...List.generate(_courseIncludesList.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Row(children: [
                          Icon(
                            _courseIncludesList[index].icon,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 8),
                          Text(
                            _courseIncludesList[index].label,
                            style: TextStyle(
                                color: Colors.black, fontSize: size.width / 25),
                          ),
                        ]),
                      );
                    }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 12, right: 12),
                width: size.width,
                //height: size.height / 2.5,
                padding: EdgeInsets.only(
                    left: 4,
                    right: 4,
                    top: size.height / 40,
                    bottom: size.height / 40),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'What Will I Learn?',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width / 23),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ...List.generate(_whatWillILearnList.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Row(children: [
                          Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              _whatWillILearnList[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width / 26),
                              maxLines: 2,
                            ),
                          ),
                        ]),
                      );
                    }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height / 40,
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 12, right: 12),
                width: size.width,
                //height: size.height / 2.5,
                padding: EdgeInsets.only(
                    left: 4,
                    right: 4,
                    top: size.height / 40,
                    bottom: size.height / 40),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Description',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width / 20),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Do you know you\'re only using 50% of Illustrator\'s capabilities? Ready upgrade yourself? Then this course will take to you the top level of Illustrator mastery.',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width / 23),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Hi there, welcome to this Adobe Illustrator advanced tutorial.',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: size.width / 26),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height / 40,
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 12, right: 12),
                width: size.width,
                //height: size.height / 2.5,
                padding: EdgeInsets.only(
                    left: 4,
                    right: 4,
                    top: size.height / 40,
                    bottom: size.height / 40),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Requirements',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width / 23),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ...List.generate(_requirementsList.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Row(children: [
                          Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              _requirementsList[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width / 26),
                              maxLines: 2,
                            ),
                          ),
                        ]),
                      );
                    }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height / 40,
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 12, right: 12),
                width: size.width,
                //height: size.height / 2.5,
                padding: EdgeInsets.only(
                    left: 4,
                    right: 4,
                    top: size.height / 40,
                    bottom: size.height / 40),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Students also viewed',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width / 23),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    for (int i = 0; i < 3; i++)
                      Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: CourseOverviewWidget(
                            title: _courseOverviewList[i].getTitle,
                            ratings: _courseOverviewList[i].getRatings,
                            reviewsCount:
                                _courseOverviewList[i].getReviewsCount,
                            instructorName:
                                _courseOverviewList[i].getInstructorName,
                            originalPrice:
                                _courseOverviewList[i].getOriginalPrice,
                            discountedPrice:
                                _courseOverviewList[i].getDiscountedPrice,
                            isFree: _courseOverviewList[i].getIsFree,
                          )),
                    SizedBox(
                      height: 12,
                    ),
                    _courseOverviewList.length > 3
                        ? InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AllViewedCourseScreen(
                                            courseOverviewList:
                                                _courseOverviewList,
                                          )));
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'SEE ALL',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: size.width / 26,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Container(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                width: size.width,
                margin: EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Curriculum',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width / 23),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Lectures (54) Total (8 hours)',
                      style: TextStyle(fontSize: size.width / 26),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            if (_courseSectionsList.length > 6)
              for (int i = 0; i < 6; i++)
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: ExpandedWidget(
                    title: _courseSectionsList[i],
                    titleStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width / 23),
                    backgroundColor: Colors.white,
                    children: <Widget>[
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return SectionDetailWidget(
                              title:
                                  'Introduction to Advanced Adobe Illustrator CC',
                              courseNo: (index + 1).toString(),
                              duration: '02:35 mins',
                              trailing: Text(
                                'PREVIEW',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: size.width / 32),
                              ),
                            );
                          })
                    ],
                  ),
                ),
            if (_courseSectionsList.length < 6)
              ...List.generate(_courseSectionsList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: ExpandedWidget(
                    title: _courseSectionsList[index],
                    titleStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width / 23),
                    backgroundColor: Colors.white,
                    children: <Widget>[
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return SectionDetailWidget(
                              title:
                                  'Introduction to Advanced Adobe Illustrator CC',
                              courseNo: (index + 1).toString(),
                              duration: '02:35 mins',
                              trailing: Text(
                                'PREVIEW',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: size.width / 32),
                              ),
                            );
                          })
                    ],
                  ),
                );
              }),
            SizedBox(
              height: 12,
            ),
            _courseSectionsList.length > 6
                ? GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllSectionsScreen(
                                  courseSectionsList: _courseSectionsList)));
                    },
                    child: Card(
                      elevation: 4,
                      margin: EdgeInsets.only(left: 12, right: 12),
                      child: Container(
                          padding: EdgeInsets.only(top: 18, bottom: 18),
                          width: size.width,
                          margin: EdgeInsets.only(left: 12, right: 12),
                          child: Center(
                              child: Text(
                            '${_courseSectionsList.length - 6} MORE SECTIONS',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            ),
                          ))),
                    ))
                : Container(),
            SizedBox(
              height: size.height / 40,
            ),
            InstructorWidget(
              instructorName: 'Daniel Walter Scott',
              students: '133,541',
              courses: '24',
              rating: '4.7',
              instructorImage: 'assets/instructor_image.jpg',
            ),
            SizedBox(
              height: size.height / 40,
            ),
            Card(
              elevation: 4,
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Container(
                padding: EdgeInsets.only(top: 18, bottom: 18),
                width: size.width,
                margin: EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Student Feedback',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width / 23),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '4.7 ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width / 8,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'average rating',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width / 26)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Column(
                      children: <Widget>[
                        RatingWidget(
                          percentage: 73,
                          rating: 5,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        RatingWidget(
                          percentage: 22,
                          rating: 2,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        RatingWidget(
                          percentage: 4,
                          rating: 3,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        RatingWidget(
                          percentage: 1,
                          rating: 2,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        RatingWidget(
                          percentage: 0,
                          rating: 1,
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height / 40,
                    ),
                    if (_reviewModelList.length > 3)
                      for (int i = 0; i < 3; i++)
                        Padding(
                            padding: EdgeInsets.only(top: 12),
                            child: ReviewWidget(
                              reviewModel: _reviewModelList[i],
                            )),
                    if (_reviewModelList.length <= 3)
                      ...List.generate(_reviewModelList.length, (index) {
                        return Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: ReviewWidget(
                              reviewModel: _reviewModelList[index],
                            ));
                      }),
                    SizedBox(
                      height: 12,
                    ),
                    _reviewModelList.length > 3
                        ? InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllReviewsScreen(
                                        reviewModelList: _reviewModelList))),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'SEE MORE REVIEWS',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: size.width / 26,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height / 40,
            ),
            Card(
              elevation: 4,
              child: Container(
                padding: EdgeInsets.only(top: 8),
                width: size.width,
                height: size.height / 12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '₹720.00',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: size.width / 15),
                        ),
                        Text(
                          '₹13,101.99',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: size.width / 30,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.lineThrough),
                        )
                      ],
                    ),
                    Container(
                      width: size.width / 1.8,
                      height: size.height / 15,
                      color: Colors.redAccent,
                      child: Center(
                        child: Text(
                          'BUY NOW',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget courseDetailsWidget({IconData icon, String label}) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          icon != null
              ? Icon(
                  icon,
                  color: Colors.white,
                  size: size.width / 25,
                )
              : Container(),
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: size.width / 32),
          )
        ],
      ),
    );
  }
}
