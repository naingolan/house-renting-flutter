import 'package:flutter/material.dart';
import 'SingleScroll.dart';
import 'Topper.dart';
import 'BottomNavBar.dart';
import 'OnSearchScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  bool showSearch = false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFefefef),
       body: 
        Stack(
        children: [
          if(!showSearch)
          Positioned.fill(
            top: 0,
            child: Topper(),
            
          ),
           Positioned.fill(
            top: MediaQuery.of(context).padding.top + -10,
            child:showSearch ? SearchScreen():SingleScroll()
          ),
          
         
          Positioned.fill(
            bottom: MediaQuery.of(context).padding.top + -22,
            child: BottomNavBar(
              onSearchPressed: () {
                setState(() {
                  showSearch = true; // Set 'showSearch' to true
                });
              },
              onHomePressed: () {
                setState(() {
                  showSearch = false; // Set 'showSearch' to false
                });
              },
            )
          ),
        ], 
      ), 
    );
  }
} 
