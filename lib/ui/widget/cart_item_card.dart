import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_clone/core/provider/cart_provider.dart';

import '../views/course_detail.dart';

class CartItemCard extends StatefulWidget {
  @override
  _CartItemCardState createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return provider.courseCartModelList.length > 0
        ? Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, left: 20, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${provider.courseCartModelList.length} items',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      //physics: NeverScrollableScrollPhysics(),
                      itemCount: provider.courseCartModelList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: cartItemWidget(
                            provider: provider,
                            index: index,
                            title: provider.courseCartModelList[index].getTitle,
                            instructorName: provider
                                .courseCartModelList[index].getInstructorName,
                            originalPrice: provider
                                .courseCartModelList[index].getOriginalPrice,
                            discountedPrice: provider
                                .courseCartModelList[index].getDiscountedPrice,
                            courseImageUrl: provider
                                .courseCartModelList[index].getCourseImageUrl,
                          ),
                        );
                      })
                ],
              ),
            ))
        : Card(
            elevation: 2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Add courses',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Your cart is empty')
                  ],
                ),
              ),
            ),
          );
  }

  Widget cartItemWidget(
      {String title,
      String instructorName,
      String originalPrice,
      String discountedPrice,
      String courseImageUrl,
      CartProvider provider,
      int index}) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        right: size.height / 50,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CourseDetailScreen()));
        },
        child: Container(
          width: size.width / 1.2, //240
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: size.height / 15, //150
                width: size.width / 6,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('$courseImageUrl'),
                        fit: BoxFit.fitHeight)),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '$title',
                      maxLines: 2,
                      style: TextStyle(fontSize: size.width / 27),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('$instructorName',
                        style: TextStyle(fontSize: size.width / 29)),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text('₹$discountedPrice',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width / 24)),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '₹$originalPrice',
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            provider.addSavedForLaterCourseModelItem(
                                provider.courseCartModelList[index], index);
                            provider.removeItemFromCourseCartModelList(index);

                            // provider.removeItemFromCourseCartModelList(index);
                          },
                          child: Text(
                            'SAVE FOR LATER',
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {
                            provider.removeItemFromCourseCartModelList(index);
                          },
                          child: Text(
                            'REMOVE',
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/gpay_button.png',
                          fit: BoxFit.cover,
                          width: size.width / 2,
                          height: 35,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
