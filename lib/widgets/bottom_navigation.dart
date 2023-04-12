import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        elevation: 10,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              label: 'Home', icon: ImageIcon(AssetImage('img/house.png'))),
          BottomNavigationBarItem(
              label: 'Bar', icon: ImageIcon(AssetImage('img/search.png'))),
          BottomNavigationBarItem(
              label: 'Search', icon: ImageIcon(AssetImage('img/profile.png'))),
          BottomNavigationBarItem(
              label: 'Mypage', icon: ImageIcon(AssetImage('img/messages.png')))
        ]);
  }
}
