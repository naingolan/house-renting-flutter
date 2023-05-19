import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class BottomNavBar extends StatelessWidget {
  final VoidCallback onSearchPressed;
  final VoidCallback onHomePressed;

  BottomNavBar({
    required this.onSearchPressed,
    required this.onHomePressed,
  });
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
      return  Stack(
  children:<Widget> [

    Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child:Container(
        color:Colors.white,
        height:100,
        padding:EdgeInsets.symmetric(vertical: 0),
        margin:EdgeInsets.symmetric(vertical:0),
        child:Padding(
          padding:const EdgeInsets.symmetric(
          horizontal:0,
          vertical: 0
          ),
          child: GNav(
            
            iconSize:30,
            backgroundColor:Colors.white,
            color:Colors.black,
            activeColor:Colors.white,
            tabBackgroundColor: Colors.lightBlue,
            gap: 8,
            onTabChange: (index) {
            if (index == 1) {
              onSearchPressed();
            } else if (index == 0) {
              onHomePressed();
            }
          },
            padding:EdgeInsets.all(16),
            tabs:const[
                GButton(
                  icon: Icons.home,
                  text: 'Home'
                 ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                      ),
                GButton(
                  icon: Icons.person_2_outlined,
                  text: 'Account'),
             ] ,
         )
        ),

      ),
  
      ),
  ],
  );
  }
}