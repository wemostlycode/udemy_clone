import 'package:flutter/material.dart';
import 'package:udemy_clone/core/model/category_model.dart';
import 'package:udemy_clone/core/model/course_details.dart';
import 'package:udemy_clone/core/model/instructor_details.dart';

class Constants {
  static List<InstructorDetails> initializeInstructorList() {
    List<InstructorDetails> instructorList = [
      InstructorDetails(
          name: '365 Careers',
          bio: 'Creating opportunities for Business & Finance students',
          coursesCount: '43',
          studentsCount: '477,263',
          image: 'assets/sample_img.jpg'),
      InstructorDetails(
          name: 'Chris Haroun',
          bio: 'Award Winning MBA Professor, Venture Capitalist and Author.',
          coursesCount: '50',
          studentsCount: '444,614',
          image: 'assets/sample_img.jpg'),
      InstructorDetails(
          name: 'Mohsen Hassan',
          bio: 'Founder and President of Montreal Trading Group',
          coursesCount: '6',
          studentsCount: '20,322',
          image: 'assets/sample_img.jpg'),
      InstructorDetails(
          name: 'Kirill Eremenko',
          bio: 'Data Scientist',
          coursesCount: '65',
          studentsCount: '859,459',
          image: 'assets/sample_img.jpg'),
      InstructorDetails(
          name: 'Steve Ballinger, MBA',
          bio: 'Millionatire Investor|Stocks|Cryptocurrency|Teaching 173,000+',
          coursesCount: '23',
          studentsCount: '202,865',
          image: 'assets/sample_img.jpg'),
      InstructorDetails(
          name: 'Wealthy Education',
          bio: 'Millionaire Investor | Investing Strategies That Work!',
          coursesCount: '37',
          studentsCount: '49,531',
          image: 'assets/sample_img.jpg'),
    ];

    return instructorList;
  }

  static List<CourseDetails> initializeCourseDetailsItem() {
    List<CourseDetails> courseDetails = [
      CourseDetails(
          title: 'The Complete Digital Marketing Course - 12 Courses in 1',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '57,377'),
      CourseDetails(
          title: 'Java Programming Masterclass for Software Developers',
          discountedPrice: '2,200',
          originalPrice: '13,002.99',
          ratings: '4.5',
          reviewsCount: '78,569'),
      CourseDetails(
          title: 'Complete Guitar System - Beginner to Advanced',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '15,219'),
      CourseDetails(
          title: 'Photography Masterclass: A Complete Guide to Photography',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '18,843'),
      CourseDetails(
          title: 'Pianoforall - Incredible New Way To Learn Piano & Keyboard',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '22,823'),
      CourseDetails(
          title: 'Complete Python Bootcamp: Go from zero to hero in Python 3',
          discountedPrice: '2,200',
          originalPrice: '13,002.99',
          ratings: '4.5',
          reviewsCount: '170,880'),
      CourseDetails(
          title: 'The Complete Digital Marketing Course - 12 Courses in 1',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '57,377'),
      CourseDetails(
          title: 'The Complete Digital Marketing Course - 12 Courses in 1',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '57,377'),
      CourseDetails(
          title: 'The Complete Digital Marketing Course - 12 Courses in 1',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '57,377'),
      CourseDetails(
          title: 'The Complete Digital Marketing Course - 12 Courses in 1',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '57,377'),
      CourseDetails(
          title: 'The Complete Digital Marketing Course - 12 Courses in 1',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '57,377'),
      CourseDetails(
          title: 'The Complete Digital Marketing Course - 12 Courses in 1',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '57,377'),
      CourseDetails(
          title: 'The Complete Digital Marketing Course - 12 Courses in 1',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '57,377'),
      CourseDetails(
          title: 'The Complete Digital Marketing Course - 12 Courses in 1',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '57,377'),
      CourseDetails(
          title: 'The Complete Digital Marketing Course - 12 Courses in 1',
          discountedPrice: '1,350',
          originalPrice: '13,505.99',
          ratings: '4.5',
          reviewsCount: '57,377'),
    ];
    return courseDetails;
  }

  static List<CategoryModel> categoriesList() {
    List<CategoryModel> categoriesList = [
      CategoryModel(
          categoryName: 'Development', categoryIcon: Icons.developer_board),
      CategoryModel(categoryName: 'Business', categoryIcon: Icons.ac_unit),
      CategoryModel(
          categoryName: 'Office Productivity', categoryIcon: Icons.ac_unit),
      CategoryModel(categoryName: 'Design', categoryIcon: Icons.ac_unit),
      CategoryModel(categoryName: 'Marketing', categoryIcon: Icons.ac_unit),
      CategoryModel(categoryName: 'Photography', categoryIcon: Icons.ac_unit),
      CategoryModel(categoryName: 'Music', categoryIcon: Icons.ac_unit),
      CategoryModel(categoryName: 'IT & Software', categoryIcon: Icons.ac_unit),
      CategoryModel(
          categoryName: 'Finance & Accounting', categoryIcon: Icons.ac_unit),
      CategoryModel(
          categoryName: 'Personal Development', categoryIcon: Icons.ac_unit),
      CategoryModel(categoryName: 'Lifestyle', categoryIcon: Icons.ac_unit),
      CategoryModel(
          categoryName: 'Health & Fitness', categoryIcon: Icons.ac_unit),
      CategoryModel(
          categoryName: 'Teaching & Academics', categoryIcon: Icons.ac_unit),
    ];

    return categoriesList;
  }
}
