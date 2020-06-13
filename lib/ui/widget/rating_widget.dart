import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RatingWidget extends StatefulWidget {
  final int rating;
  final int percentage;

  const RatingWidget({Key key, this.rating, this.percentage}) : super(key: key);

  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print("WIDTH : ${size.width / 2}");
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Stack(children: [
          Container(
            width: size.width / 2,
            height: 15,
            color: Colors.grey[200],
          ),
          Container(
            width: widget.percentage.toDouble() * 2,
            height: 15,
            color: Colors.grey,
          ),
        ]),
        SmoothStarRating(
            allowHalfRating: false,
            starCount: 5,
            rating: widget.rating.toDouble(),
            size: size.width / 20,
            color: Colors.yellow[800],
            borderColor: Colors.grey,
            spacing: 0.0),
        Text(
          '${widget.percentage.toString()}%',
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
