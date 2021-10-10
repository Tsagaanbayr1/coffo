import 'package:coffo/cart_screen.dart';
import 'package:coffo/favorites_screen.dart';
import 'package:coffo/home_screen.dart';
import 'package:coffo/profile_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var _currentIndex = 0;

  final cart = CartScreen();
  final favorites = FavoritesScreen();
  final profile = ProfileScreen();
  final home = HomeScreen();

  late List<Widget> screens;

  @override
  void initState() {
    screens = [home, favorites, cart, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        elevation: 0,
        type: BottomNavigationBarType.shifting,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: _currentIndex == 0 ? Colors.black : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_rounded,
              color: _currentIndex == 1 ? Colors.black : Colors.grey,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_rounded,
              color: _currentIndex == 2 ? Colors.black : Colors.grey,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              color: _currentIndex == 3 ? Colors.black : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
