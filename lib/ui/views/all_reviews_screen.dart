import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:udemy_clone/core/model/review_model.dart';

class AllReviewsScreen extends StatefulWidget {
  final List<ReviewModel> reviewModelList;

  const AllReviewsScreen({Key key, this.reviewModelList}) : super(key: key);

  @override
  _AllReviewsScreenState createState() => _AllReviewsScreenState();
}

class _AllReviewsScreenState extends State<AllReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text(
          'Adobe Illustrator CC - Advanced Training Course',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: size.height / 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Reviews',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width / 23,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '4.7',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width / 7,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SmoothStarRating(
                          allowHalfRating: false,
                          starCount: 5,
                          rating: 4.5,
                          size: size.width / 20,
                          color: Colors.yellow[800],
                          borderColor: Colors.grey,
                          spacing: 0.0),
                      Text(
                        '1,554 Ratings',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              ...List.generate(20, (index) {
                return Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SmoothStarRating(
                            allowHalfRating: false,
                            starCount: 5,
                            rating: 3,
                            size: size.width / 20,
                            color: Colors.yellow[800],
                            borderColor: Colors.grey,
                            spacing: 0.0),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '2 days ago',
                          style: TextStyle(fontSize: size.width / 29),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'at this stage, its a lot of repetition from the introduction to illustrator course I did last year. But, I will see what else you have in stock, Dan!',
                          style: TextStyle(fontSize: size.width / 26),
                        ),
                      ],
                    ));
              }),
              SizedBox(
                height: size.height / 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
