import 'package:flutter/material.dart';
import 'package:udemy_clone/ui/views/account_screen.dart';
import 'package:udemy_clone/ui/views/featured_screen.dart';
import 'package:udemy_clone/ui/views/search_screen.dart';
import 'package:udemy_clone/ui/views/wishlist_screen.dart';

import 'my_courses_screen.dart';

class UdemyHomeScreen extends StatefulWidget {
  @override
  _UdemyHomeScreenState createState() => _UdemyHomeScreenState();
}

class _UdemyHomeScreenState extends State<UdemyHomeScreen> {
  PageController pageController;

  int _page = 0;

  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        children: [
          Container(
            // child: FeaturedScreen(),
            child: FeaturedScreen(),
          ),
          Container(
            // child: FeaturedScreen(),
            child: SearchScreen(),
          ),
          Container(
            // child: FeaturedScreen(),
            child: MyCoursesScreen(),
          ),
          Container(
            // child: FeaturedScreen(),
            child: WishlistScreen(),
          ),
          Container(child: AccountScreen()),
        ],
        controller: pageController,
        physics: new NeverScrollableScrollPhysics(),
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: Colors.blueGrey[900],
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
                size: size.width / 16,
                color: _page == 0 ? Colors.white : Colors.white70,
              ),
              title: Text(
                'Featured',
                style: TextStyle(
                    color: _page == 0 ? Colors.white : Colors.white60,
                    fontSize: size.width / 34),
              ),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.search,
                color: _page == 1 ? Colors.white : Colors.white60,
                size: size.width / 16,
              ),
              title: Text(
                'Search',
                style: TextStyle(
                    color: _page == 1 ? Colors.white : Colors.white60,
                    fontSize: size.width / 34),
              ),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.play_circle_outline,
                color: _page == 2 ? Colors.white : Colors.white60,
                size: size.width / 16,
              ),
              title: Text(
                'My courses',
                style: TextStyle(
                    color: _page == 2 ? Colors.white : Colors.white60,
                    fontSize: size.width / 34),
              ),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.favorite_border,
                color: _page == 3 ? Colors.white : Colors.white60,
                size: size.width / 16,
              ),
              title: Text(
                'Wishlist',
                style: TextStyle(
                    color: _page == 3 ? Colors.white : Colors.white60,
                    fontSize: size.width / 34),
              ),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.account_circle,
                color: _page == 4 ? Colors.white : Colors.white60,
                size: size.width / 16,
              ),
              title: Text(
                'Account',
                style: TextStyle(
                    color: _page == 4 ? Colors.white : Colors.white60,
                    fontSize: size.width / 34),
              ),
              backgroundColor: Colors.white)
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}
