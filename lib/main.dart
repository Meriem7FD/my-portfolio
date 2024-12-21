import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/about_me_screen.dart';
import 'views/projects_screen.dart';
import 'views/contact_me_screen.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatefulWidget {
  @override
  _PortfolioHomeState createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    AboutMeScreen(),
    ProjectsScreen(),
    ContactMeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "À propos"),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "Projets"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Contact"),
        ],
      ),
    );
  }
}
