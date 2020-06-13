import 'package:flutter/cupertino.dart';
import 'package:udemy_clone/core/model/course_cart_model.dart';

class CartProvider with ChangeNotifier {
  List<CourseCartModel> _courseCartModelList = [
    CourseCartModel(
        title: 'Learn Flutter & Dart to Build iOS & Android Apps',
        instructorName: 'Academind by Maximilian Schwarzmuller',
        originalPrice: '16,693.99',
        discountedPrice: '500.00',
        courseImageUrl: 'assets/course_image.jpg'),
    CourseCartModel(
        title: 'Microsoft Excel - Excel from Beginner to Advanced',
        instructorName: 'Kyle Pew',
        originalPrice: '12,519.99',
        discountedPrice: '500.00',
        courseImageUrl: 'assets/course_image.jpg')
  ];

  List<CourseCartModel> get courseCartModelList => _courseCartModelList;

  void removeItemFromCourseCartModelList(int index) {
    courseCartModelList.removeAt(index);
    notifyListeners();
  }

  void addCourseCartModelItem(CourseCartModel item, int index) {
    courseCartModelList.insert(index, item);
    notifyListeners();
  }

  List<CourseCartModel> _savedForLaterCourseModelList = [
    CourseCartModel(
        title: 'The Web Developer Bootcamp',
        instructorName: 'Colt Steele',
        originalPrice: '16,693.99',
        discountedPrice: '500.00',
        courseImageUrl: 'assets/course_image.jpg'),
  ];

  List<CourseCartModel> get savedForLaterCourseModelList =>
      _savedForLaterCourseModelList;

  void removeItemFromSavedForLaterCourseModelList(int index) {
    savedForLaterCourseModelList.removeAt(index);
    notifyListeners();
  }

  set savedForLaterCourseModelList(List<CourseCartModel> list) {
    _savedForLaterCourseModelList = list;
    notifyListeners();
  }

  void addSavedForLaterCourseModelItem(CourseCartModel item, int index) {
    savedForLaterCourseModelList.insert(index, item);
    print("LEE : ${savedForLaterCourseModelList.length}");
    notifyListeners();
  }

  List<CourseCartModel> _wishListCourseModelList = [
    CourseCartModel(
        title: 'Microsoft Excel - Excel from Beginner to Advanced',
        instructorName: 'Kyle Pew',
        originalPrice: '12,519.99',
        discountedPrice: '500.00',
        courseImageUrl: 'assets/course_image.jpg')
  ];

  List<CourseCartModel> get wishListCourseModelList => _wishListCourseModelList;

  void removeItemFromWishListCourseModelList(int index) {
    wishListCourseModelList.removeAt(index);
    notifyListeners();
  }

  set wishListCourseModelList(List<CourseCartModel> list) {
    _wishListCourseModelList = list;
    notifyListeners();
  }

  void addWishListCourseModelItem(CourseCartModel item, int index) {
    wishListCourseModelList.insert(index, item);
    print("LEE : ${wishListCourseModelList.length}");
    notifyListeners();
  }
}
