import 'package:flutter/material.dart';

class EntranceWords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin:EdgeInsets.only(top:12, bottom:20),
      padding:const EdgeInsets.only(left:20, right:10),           
          child:Row(
                 children:[
                   Text('Near your location',
                    style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold, fontSize:18 ),),
                    Spacer(),
                    Text('See all', 
                    style:TextStyle(color:Colors.lightBlue, fontWeight:FontWeight.bold)),
                      ]
          ),
       );
  }
}