class CourseOverviewModel {
  final String title;
  final String ratings;
  final String originalPrice;
  final String discountedPrice;
  final String reviewsCount;
  final String instructorName;
  final bool isFree;

  CourseOverviewModel(
      {this.title,
      this.ratings,
      this.originalPrice,
      this.discountedPrice,
      this.reviewsCount,
      this.instructorName,
      this.isFree});

  String get getTitle => title;

  String get getRatings => ratings;

  String get getOriginalPrice => originalPrice;

  String get getDiscountedPrice => discountedPrice;

  String get getReviewsCount => reviewsCount;

  String get getInstructorName => instructorName;

  bool get getIsFree => isFree;
}
