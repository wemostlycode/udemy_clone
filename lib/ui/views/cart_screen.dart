import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_clone/core/provider/cart_provider.dart';
import 'package:udemy_clone/ui/widget/cart_item_card.dart';
import 'package:udemy_clone/ui/widget/saved_for_later_item_card.dart';
import 'package:udemy_clone/ui/widget/wishlist_item_card.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Cart', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ChangeNotifierProvider<CartProvider>(
              child: CartItemCard(),
              create: (_) => CartProvider(),
            ),
            provider.savedForLaterCourseModelList.length > 0
                ? ChangeNotifierProvider<CartProvider>(
                    child: SavedForLaterItemCard(),
                    create: (_) => CartProvider(),
                  )
                : Container(),
            ChangeNotifierProvider<CartProvider>(
              child: WishListItemCard(),
              create: (_) => CartProvider(),
            ),
          ],
        ),
      ),
    );
  }
}
