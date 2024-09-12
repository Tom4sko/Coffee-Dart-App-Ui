import 'package:flutter/material.dart';
import 'package:learningstuff/screens/FavouriteScreen.dart';
import 'package:learningstuff/screens/HomeScreen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  final _screens = const [
    HomeScreen(),
    FavouriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 22, 19, 19),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white,),
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        backgroundColor: const Color.fromARGB(255, 22, 19, 19),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white,), 
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star, color: Colors.white,),
            label: 'Favourite',
          ),
        ],
      ),
    );
  }
}