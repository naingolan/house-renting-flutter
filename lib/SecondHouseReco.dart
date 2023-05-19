import 'package:flutter/material.dart';
class SecondHouseReconstructed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return                 Container(
                  height:90,
                  decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                      BoxShadow(
                         color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                         offset: Offset(0, 0),
                           ),
                          ],
                  ),
                  margin:EdgeInsets.only(left:12, right:12, top:0, bottom:15),
                  padding:EdgeInsets.symmetric(horizontal:5, vertical:5),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget> [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/nyumba.jpeg',
                        width:80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                      ),
                     //here the container enters
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        padding:const EdgeInsets.symmetric(horizontal: 10, vertical:0),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children:<Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:<Widget>[
                          Text('Tabata Chang\'ombe',
                          style:TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                          ),
                          Container(width:20, height:20),
                          Text('Tsh. 150,000',
                          style:TextStyle(fontWeight: FontWeight.bold, color:Colors.lightBlue, fontSize: 14)
                          )
                        ]
                        ,),
                    
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Text('Mwembeni, Mwaisemba Street',
                                style:TextStyle(fontWeight:FontWeight.normal, fontSize: 12, color: Colors.black45)
                            ),
                            Container(width:60, height:20),
                          ],
                        ),
                        Row(
                          children:<Widget>[
                            Icon(Icons.shower,size:24, color:Colors.black),
                            
                          ]

                        )
                      
                        ],
                      ),
                      ),
                     //here container ends
                        ],
                      ),
                      
                      

    );
  }
}