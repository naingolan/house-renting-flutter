import 'package:flutter/material.dart';
class SecondHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
      return Container(
                      margin: EdgeInsets.only(left: 20, right:20),
                      padding:const EdgeInsets.symmetric(vertical:0, horizontal:0),
                      height:200,
                      width:400,
                      decoration: BoxDecoration(
                      color: Color.fromARGB(226, 255, 255, 255),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                      BoxShadow(
                         color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                         offset: Offset(0, 0),
                           ),
                          ],
                     ),
                    child:Row(
                      children:<Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                         'https://static.zawya.com/view/acePublic/alias/contentid/YjkzOWE0N2MtZmE2ZC00/0/joharirotananew-jpg.webp?f=3%3A2&q=0.75&w=640',
                        width:150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        padding:const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                        children:<Widget>[
                        Row(
                          children:<Widget>[
                          Text('Tabata Chang\'ombe',
                          style:TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                          ),
                          Spacer(),
                          Text('Tsh. 150,000',
                          style:TextStyle(fontWeight: FontWeight.bold, color:Colors.lightBlue, fontSize: 14)
                          )
                        ]
                        ,),
                      
                      Container(
                        margin:EdgeInsets.only(top:7),
                        padding:const EdgeInsets.symmetric(horizontal:10),
                        child:Row(
                          children:[
                            Text('Mwembeni, Mwaisemba Street',
                                style:TextStyle(fontWeight:FontWeight.w400, fontSize: 12)
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.only(top:12),
                        padding:const EdgeInsets.symmetric(horizontal:10),
                         child:
                         Row(
                          children:<Widget>[
                            Icon(Icons.shower,size:24, color:Colors.black),
                            Padding(
                              padding:EdgeInsets.only(left:0, right:7),
                              child:Text('10',
                              style:TextStyle(color:Colors.black,)
                             ),
                            ),

                            Icon(Icons.sensor_door,size:24, color:Colors.black),
                            Padding(
                              padding:EdgeInsets.only(left: 0, right:7),
                              child:Text('10',
                              style:TextStyle(color:Colors.black,)
                             ),
                            ),

                            Icon(Icons.drive_eta,size:24, color:Colors.black),
                            Padding(
                              padding:EdgeInsets.only(left: 0, right:7),
                              child:Text('5',
                              style:TextStyle(color:Colors.black,)
                             ),
                            ),
                            Spacer(),
                            Text('548 sqm',
                            style:TextStyle(color:Colors.lightBlue, fontWeight: FontWeight.bold)
                            )

                          ],),
                      ),
                        ],
                      ),
                      
                      ),
                      ],
                    ),
                
      );
  }
}