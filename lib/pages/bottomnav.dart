import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/booking.dart';
import 'package:food_delivery/pages/cart.dart';
import 'package:food_delivery/pages/home.dart';
import 'package:food_delivery/pages/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late Home homePage;
  late Booking bookingPage;
  late Cart cartPage;
  late Profile profilePage;

  @override
  void initState() {
    homePage = const Home();
    bookingPage = const Booking();
    cartPage = const Cart();
    profilePage = const Profile();
    pages = [homePage, bookingPage, cartPage, profilePage];
    currentPage = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: const Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
              // currentPage = pages[index];
            });
          },
          items: const <Widget>[
            Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
          ]),
      body: pages[currentTabIndex],
    );
  }
}
