class CourseCartModel {
  final String title;
  final String instructorName;
  final String originalPrice;
  final String discountedPrice;
  final String courseImageUrl;

  CourseCartModel(
      {this.title,
      this.instructorName,
      this.originalPrice,
      this.discountedPrice,
      this.courseImageUrl});

  String get getTitle => title;

  String get getOriginalPrice => originalPrice;

  String get getDiscountedPrice => discountedPrice;

  String get getInstructorName => instructorName;

  String get getCourseImageUrl => courseImageUrl;
}
