import 'package:flutter/material.dart';
class SearchBar extends StatefulWidget {
  @override
  _SearchBar createState() => _SearchBar();
}

class _SearchBar extends State<SearchBar> {
  int _counter = 0;



  void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    
    context: context,
    builder: (BuildContext context) {
      return  FractionallySizedBox(
        heightFactor: 1.7,
        child: Container(
          height:1500,
          padding:EdgeInsets.symmetric(horizontal: 10, vertical:20),
          decoration:BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(20),
         ),
         child:Column(
          children:<Widget>[
            Row(children: [
               IconButton(
               icon: Icon(Icons.close, size:30),
                onPressed: () {
                  // Handle menu button press
                 },
              ),
              Spacer(),
              Text('Filter', style:TextStyle(fontSize: 16)),
              Spacer(),
              Text('Reset', style:TextStyle(fontSize:16, fontWeight: FontWeight.bold, color:Colors.lightBlue))
            ],),
            Row(
            children:[
              Container(width:10, height:40),
              Text('Price Range', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20) ),
              
            ]
            ),

            Row(
              children: [
      //first container
      Container(        
        margin:EdgeInsets.symmetric(horizontal:10, vertical:15),
        width:160,
        height:50,
        padding:EdgeInsets.only(left: 10),
        decoration:BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
                      BoxShadow(
                         color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 3,
                         offset: Offset(0, 0),
                           ),
                          ],
                     
      ),
      child: TextField(
      decoration: InputDecoration(
      border:InputBorder.none,
      hintText: '0 Tshs',
        ), 
      ),
    ),
    //second container
          Container(        
        margin:EdgeInsets.symmetric(horizontal:10, vertical:15),
        width:160,
        height:50,
        padding:EdgeInsets.only(left: 10),
        decoration:BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
                      BoxShadow(
                         color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 3,
                         offset: Offset(0, 0),
                           ),
                          ],
                     
      ),
      child: TextField(
      decoration: InputDecoration(
      border:InputBorder.none,
      hintText: '1,000,000 Tshs',
        ), 
      ),
    ),
              ],
     ),
    //second container ends here
    //second text bar for Propery type starts here
                Row(
            children:[
              Container(width:10, height:40),
              Text('Property Type', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20) ),
              
            ]
            ),
    //Second textbar for properry tpe ends here
    //Three containers starst here
    Row(
      children:[
    //1. first container
              Container(        
        margin:EdgeInsets.symmetric(horizontal:10, vertical:15),
        width:100,
        height:50,
        padding:EdgeInsets.only(left: 10),
        decoration:BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
                      BoxShadow(
                         color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 3,
                         offset: Offset(0, 0),
                           ),
                          ],
                     
      ),
      child: TextField(
      decoration: InputDecoration(
      border:InputBorder.none,
      hintText: 'House',
        ), 
      ),
    ),
    //2. Second Container 
    Container(        
        margin:EdgeInsets.symmetric(horizontal:10, vertical:15),
        width:100,
        height:50,
        padding:EdgeInsets.only(left: 10),
        decoration:BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
                      BoxShadow(
                         color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 3,
                         offset: Offset(0, 0),
                           ),
                          ],
                     
      ),
      child: TextField(
      decoration: InputDecoration(
      border:InputBorder.none,
      hintText: 'Apartment',
        ), 
      ),
    ),
    //3. Third Container
    Container(        
        margin:EdgeInsets.symmetric(horizontal:10, vertical:15),
        width:100,
        height:50,
        padding:EdgeInsets.only(left: 10),
        decoration:BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
                      BoxShadow(
                         color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 3,
                         offset: Offset(0, 0),
                           ),
                          ],
                     
      ),
      child: TextField(
      decoration: InputDecoration(
      border:InputBorder.none,
      hintText: 'Land',
        ), 
      ),
    ),
    //Three containers ends here 
      ]
    ),
    //Third text for Home Details starts here 
                    Row(
            children:[
              Container(width:10, height:40),
              Text('Home Details', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20) ),
              
            ]
            ),
    //Third text for Home details ends here


    //doing stepper funciton 

    
Row(
children:[
  Container(width:10, height:40),
 Text('Bedroom', style:TextStyle(fontWeight: FontWeight.normal, fontSize: 18) ),
 Spacer(),
  GestureDetector(
  onTap: () {
    setState(() {
      _counter++;
    });
  },
  child: Icon(Icons.add, size:30, color:Colors.lightBlue,),
),
Text( '$_counter', style:TextStyle(fontSize: 20)),
GestureDetector(
  onTap: () {
    setState(() {
      _counter--;
    });
  },
  child: Icon(Icons.remove, size:30, color:Colors.lightBlue,),
),
  Container(width:30, height:40),      
]
),

    //here i am imlelmenting the button
    Container(
      margin:EdgeInsets.only(top:20),
      width:360,
      height:60,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:Colors.lightBlue,
      ),
    child:
    ElevatedButton(
  onPressed: () {
    // Perform submit action
    print('Submit button pressed');
  },
  child: Text('Submit', style:TextStyle(color: Colors.black, fontSize: 18)),
)
 )
 //button ends here

 
              ]
              ,)
          
          )
        
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top:20, left:10, right:10, bottom:30),
      padding:EdgeInsets.only(bottom:10, top:5, right:5),
      decoration:BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    child:Row(  
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Flexible(
      flex: 1,
      child: IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          // Handle menu button press
        },
      ),
    ),
    Flexible(
      flex: 6,
      child: TextField(
        decoration: InputDecoration(
          border:InputBorder.none,
          hintText: 'Search here',
        ),
      ),
    ),
    Flexible(
      flex: 1,
      child: Container(
        decoration:BoxDecoration(
           borderRadius: BorderRadius.circular(8),
           color:Colors.lightBlue,
        ),
        child:IconButton(
        icon: Icon(Icons.settings_outlined, size:32, color:Colors.white),
        onPressed:(){_showBottomSheet(context);},
      ),
      ),
    ),
  ],
)

    );
    }
    }