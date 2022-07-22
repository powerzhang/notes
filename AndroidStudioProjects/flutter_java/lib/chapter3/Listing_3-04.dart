import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
 MyApp({Key ? key}) : super(key : key);
 @override
 _MyApp createState() => _MyApp();
}

class _MyApp extends State {

 var _currentPage = 0;

 var _pages = [
   Text("Page 1 - Announcements"),
   Text("Page 2 - Birthdays"),
   Text("Page 3 - Data")
 ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(title : "Flutter Playground",
      home : Scaffold(
        body : Center(child : _pages.elementAt(_currentPage)),
        bottomNavigationBar : BottomNavigationBar(
          items : [
            BottomNavigationBarItem(
              icon : Icon(Icons.announcement),
              label : "Announcements"
            ),
            BottomNavigationBarItem(
              icon : Icon(Icons.cake),
              label : "Birthdays"
            ),
            BottomNavigationBarItem(
              icon : Icon(Icons.cloud),
              label : "Data"
            ),
          ],
          currentIndex : _currentPage,
          fixedColor : Colors.red,
          onTap : (int inIndex) {
            setState(() { _currentPage = inIndex; });
          }
        )
      )
    );

  }

}

