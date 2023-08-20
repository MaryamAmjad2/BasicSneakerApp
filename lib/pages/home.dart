import 'package:flutter/material.dart';
import 'package:nike_app/components/bottom_navbar.dart';
import 'package:nike_app/pages/cart.dart';
import 'package:nike_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int to keep track of selected tab
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    // to Update Index
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopePage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
                icon: Icon(Icons.menu, color: Colors.black),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                });
          }),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: Column(
            children: [
              //logo
              DrawerHeader(
                child: Image.asset(
                  'assets/nike.png',
                  color: Colors.white,
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Divider(color: Colors.grey[800]),
              ),
              //for other Pages
              Padding(
                padding: const EdgeInsets.only(left: 58.0),
                child: ListTile(
                  leading: Icon(Icons.home_filled, color: Colors.white),
                  title: Text('Home', style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 58.0),
                child: ListTile(
                  leading: Icon(Icons.info, color: Colors.white),
                  title: Text('About ', style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 58.0),
                child: ListTile(
                  leading: Icon(Icons.logout_sharp, color: Colors.white),
                  title: Text('Log Out', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[300],
        //bottom NavigationBar (we are using Google Navbar)
        bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        body: _pages[_selectedIndex]);
  }
}
