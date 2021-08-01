import 'package:education/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Education',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,          
          unselectedItemColor: Color(0xff6c40ff),
          unselectedLabelStyle: TextStyle(
            color: Color(0xff6c40ff),
            fontSize: 12.0
          ),
          selectedLabelStyle: TextStyle(
            color: Color(0xff6c40ff),
            fontSize: 12.0
          ),
          selectedItemColor: Color(0xff6c40ff),
        )
      ),
      
      home: BottomNavBarWidget(),
      
    );
  }
}



