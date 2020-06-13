import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_clone/core/provider/cart_provider.dart';

import '../views/course_detail.dart';

class WishListItemCard extends StatefulWidget {
  @override
  _WishListItemCardState createState() => _WishListItemCardState();
}

class _WishListItemCardState extends State<WishListItemCard> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return provider.wishListCourseModelList.length > 0
        ? Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, left: 20, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Wishlist',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: provider.wishListCourseModelList.length,
                      itemBuilder: (context, index) {
                        print(
                            "Length : ${provider.wishListCourseModelList.length}");
                        return Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: cartItemWidget(
                            provider: provider,
                            index: index,
                            title: provider
                                .wishListCourseModelList[index].getTitle,
                            instructorName: provider
                                .wishListCourseModelList[index]
                                .getInstructorName,
                            originalPrice: provider
                                .wishListCourseModelList[index]
                                .getOriginalPrice,
                            discountedPrice: provider
                                .wishListCourseModelList[index]
                                .getDiscountedPrice,
                            courseImageUrl: provider
                                .wishListCourseModelList[index]
                                .getCourseImageUrl,
                          ),
                        );
                      }),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ))
        : Container();
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
                            provider.addCourseCartModelItem(
                                provider.wishListCourseModelList[index], index);
                            provider
                                .removeItemFromWishListCourseModelList(index);
                          },
                          child: Text(
                            'ADD TO CART',
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {
                            provider
                                .removeItemFromWishListCourseModelList(index);
                          },
                          child: Text(
                            'REMOVE',
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          ),
                        )
                      ],
                    ),
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
