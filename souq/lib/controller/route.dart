import 'package:flutter/material.dart';
import 'package:modernlogintute/view/pages/profile_pages.dart';
import 'package:modernlogintute/view/pages/shop.dart';
import '../view/pages/grid.dart';
import '../view/pages/cart.dart';
import '../view/pages/home.dart';
import '../view/pages/shop.dart';
import '../view/pages/pages.dart';
import '../view/pages/settings.dart';
import '../view/pages/support.dart';
import '../view/pages/profile_pages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      key: _scaffoldKey,
      drawer: const profile_pages(),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          //Shop(),
          Home(),
          Support(),
          Cart(),
          Pages(),
          Settings(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        elevation: 45,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[500],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support),
            label: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_sharp),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Pages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
