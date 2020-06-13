class ReviewModel {
  final int rating;
  final String review;
  final String time;

  ReviewModel({this.rating, this.review, this.time});

  int get getRating => rating;

  String get getReview => review;

  String get getTime => time;
}
