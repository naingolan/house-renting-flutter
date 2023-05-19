import 'package:flutter/material.dart';
import 'SecondHouseReco.dart';
import 'SearchBar.dart';
class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    padding:EdgeInsets.only(top:20),
    color: const Color(0xFFefefef),
    child:Column(
    children:<Widget>[
    SearchBar(),
    Expanded(
            child: ListView.builder(
              itemCount: 20, // Number of items in the list
              itemBuilder: (context, index) {
                return SecondHouseReconstructed();
              },
            ),
          ),
    ],
    ),
    );
  }
}
