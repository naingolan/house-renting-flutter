import 'package:flutter/material.dart';
import 'EntranceWords.dart';
import 'SecondEntrance.dart';
import 'OneHouse.dart';
import 'SecondHouse.dart';
import 'SecondHouseReco.dart';
// import 'package:plant_app/constants.dart';

// import 'image_and_icons.dart';
// import 'title_and_price.dart';

class SingleScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
    padding: EdgeInsets.only(top: 80),
    child: SingleChildScrollView(
      scrollDirection:Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Column(
                  children: <Widget>[
                    EntranceWords(),
                    Container(
                                height: 420, // Provide a fixed height for vertical scrolling
                                padding: const EdgeInsets.only(bottom:30),
                                child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                    OneHouse(),
                                    OneHouse(),
                                    OneHouse(),
                // Add more instances of OneHouse as needed
                                ],
                    ),
                    
                  ),
                    
                SecondEntrance(),
                SecondHouseReconstructed(),
                SecondHouseReconstructed(),
                SecondHouseReconstructed(),
                SecondHouseReconstructed(),

                    ],
                    ),
                  ),
    ),
    );
                   
  }
}