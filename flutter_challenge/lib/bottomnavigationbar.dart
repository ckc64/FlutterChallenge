import 'package:flutter/material.dart';

Widget bottomNavigation({int currentSelectedIndex,onTap}){
  return BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text("Explore"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text("Chat"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("My App"),
            ),
          ],
          currentIndex: currentSelectedIndex,
          selectedItemColor: Colors.red,
          onTap: onTap,
        );
}