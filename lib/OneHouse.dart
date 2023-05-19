import 'package:flutter/material.dart';
class OneHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
      return Container(
                      margin: EdgeInsets.only(left: 20, bottom:12),
                      padding:const EdgeInsets.symmetric(vertical:0, horizontal:0),
                      width:300,
                      height:350,
                      decoration: BoxDecoration(
                      color: Colors.white,
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
                    child:Column(
                      children:<Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                            'assets/images/nyumba.jpeg',
                        width:300,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        padding:const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                        children:[
                          Text('Tabata Chang\'ombe',
                          style:TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                          ),
                          Spacer(),
                          Text('Tsh. 150,000',
                          style:TextStyle(fontWeight: FontWeight.bold, color:Colors.lightBlue, fontSize: 14)
                          )
                        ]
                        ,),
                      ),
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
                         child:Row(
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
                      )
                      ],
                    ),
                
      );
  }
}