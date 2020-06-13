import 'package:flutter/material.dart';
import 'package:udemy_clone/core/model/course_cart_model.dart';

class CartItemWidget extends StatefulWidget {
  final String title;
  final String instructorName;
  final String originalPrice;
  final String discountedPrice;
  final String courseImageUrl;
  final bool isCourseInCart;
  final List<CourseCartModel> courseCartModelList;
  final int index;

  const CartItemWidget(
      {Key key,
      this.title,
      this.instructorName,
      this.originalPrice,
      this.discountedPrice,
      this.courseImageUrl,
      this.isCourseInCart,
      this.courseCartModelList,
      this.index})
      : super(key: key);

  @override
  _CartItemWidgetState createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        right: size.height / 50,
      ),
      child: GestureDetector(
        onTap: () {
//          Navigator.push(context,
//              MaterialPageRoute(builder: (context) => CourseDetailScreen()));
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
                        image: AssetImage('${widget.courseImageUrl}'),
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
                      '${widget.title}',
                      maxLines: 2,
                      style: TextStyle(fontSize: size.width / 27),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('${widget.instructorName}',
                        style: TextStyle(fontSize: size.width / 29)),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Text('₹${widget.discountedPrice}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width / 24)),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '₹${widget.originalPrice}',
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
                        widget.isCourseInCart
                            ? Text(
                                'SAVE FOR LATER',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 12),
                              )
                            : Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'ADD TO CART',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 12),
                                  )
                                ],
                              ),
                        SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {
                            widget.courseCartModelList.removeAt(widget.index);
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
                    widget.isCourseInCart
                        ? GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              'assets/gpay_button.png',
                              fit: BoxFit.cover,
                              width: size.width / 2,
                              height: 35,
                            ))
                        : Container()
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
