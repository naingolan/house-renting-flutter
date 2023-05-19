import 'package:flutter/material.dart';
import 'Topper.dart';
// import 'package:plant_app/constants.dart';

// import 'image_and_icons.dart';
// import 'title_and_price.dart';

class Topper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
  children:<Widget> [

    Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        padding:EdgeInsets.only(top:30),
        height: 90, // Adjust the height as per your preference
        color: Color.fromARGB(253, 255, 255, 255),
        child:Align(
          alignment: Alignment.center,
          child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,

            children:<Widget> [
            // Location icon
            IconButton(
              icon: Icon(Icons.location_on,size:30, color:Colors.lightBlue),
              onPressed: () {
                // Handle location icon press
              },
            ),

            // Container with text fields
           Expanded(
  child: Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        // Upper text field
        Text(
          'Current location',
          style:TextStyle(color:Colors.black)
        ),

        // Lower text field
        Text(
            'Nnandi Azikiwe Street',
            style: TextStyle(fontWeight: FontWeight.bold, color:Colors.black,),
        ),
      ],
    ),
  ),
),
      Container(
        margin: EdgeInsets.only(left: 8),
        child: Stack(
        children: [
          // Round circle
          Container(
            width: 35,
            height: 35,
            margin: EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(226, 255, 255, 255),
              boxShadow: [
                 BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
          ),
        ],
            ),
          ),

          // Notification icon
          Positioned.fill(
            child: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      ),

            ]
        ),
        ),
      ),
    ),
       ],
    );
  }
}