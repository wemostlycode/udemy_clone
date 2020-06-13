import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:udemy_clone/core/model/review_model.dart';

class ReviewWidget extends StatefulWidget {
  final ReviewModel reviewModel;

  const ReviewWidget({Key key, this.reviewModel}) : super(key: key);

  @override
  _ReviewWidgetState createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SmoothStarRating(
              allowHalfRating: false,
              starCount: 5,
              rating: widget.reviewModel.getRating.toDouble(),
              size: size.width / 20,
              color: Colors.yellow[800],
              borderColor: Colors.grey,
              spacing: 0.0),
          SizedBox(
            height: 8,
          ),
          Text(
            widget.reviewModel.getReview,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: size.width / 26),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            widget.reviewModel.getTime,
            style: TextStyle(fontSize: size.width / 29),
          )
        ],
      ),
    );
  }
}
