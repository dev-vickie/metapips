// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:metapips/pages/firstpage.dart';
import 'package:metapips/pages/secondpage.dart';
import 'package:metapips/pages/thirdpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentPage = 0;

  void _pagesNavigator(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  final List<Widget> _pages = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text(
          'Metastreak Forex',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[200],
          ),
        ),
      ),
      drawer: myDrawer(),
      backgroundColor: Colors.blue[200],
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _pagesNavigator,
        currentIndex: _currentPage,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3_sharp), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken), label: 'Favorites')
        ],
      ),
    );
  }
}

//Drawer Implimentation
Widget myDrawer() {
  return Drawer(
    backgroundColor: Colors.blue[300],
    child: Column(
      children: [
        DrawerHeader(
          child: Center(
            child: Text(
              'LOGO',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        // DarkMode Switch
        ListTile(
          title: Text(
            'Share to friends',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.share),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            'Publisher info',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.bookmark),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            'Privacy Policy',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.privacy_tip),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            'Rate Us',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.star),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            'More apps',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.apps),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            'About',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(Icons.info_outline_sharp),
          onTap: () {},
        ),
      ],
    ),
  );
}
