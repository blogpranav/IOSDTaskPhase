import 'package:flutter/material.dart';

class MemberDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers:<Widget>[
          SliverAppBar(
            backgroundColor:Colors.grey,
            floating:false,
            pinned:true,
            expandedHeight:150.0,
            flexibleSpace:
            FlexibleSpaceBar(
              centerTitle:true,
              title:Text("SWASTHIK C NAYAK",
              style: TextStyle(
                color:Colors.black87,
                fontSize:20,
                fontWeight:FontWeight.bold,
              ),),
              background: Container(
                color:Colors.lightBlue,
              ),
            ),
          ),
        SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildListDelegate(
            [
              listItem(
                "REGESTRATION NUMBER:180905012",
              ),
              listItem(
                "COLLEGE:MANIPAL INSTITUTE OF TECHONOLOGY",
              ),
              listItem(
                "SEX:MALE",
              ),
              listItem(
                "YEAR:THIRD YEAR",
              ),
              listItem(
                "BRANCH:COMPUTER SCIENCE AND ENGINEERING",
              ),
              listItem(
                "PHONE NUMBER:7019278256",
              ),
              listItem(
                "HOSTEL NUMBER:(N/A)LOCALITE",
              ),
             // Center(
            //  child:BackButton(
            //  color: Colors.orangeAccent,
            //  onPressed: (){
            //    Navigator.pop(context);
            //  },   
          //  ),
          //  ),
            ]
          ),
        )
        
        ]
    ), 
    );
  }
}
Widget listItem(String title)=>Container(
  decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.black26, width: 1.0),),),
  child: Center(
    child:Text("$title",
    textAlign: TextAlign.center,
    style: TextStyle(
      color:Colors.white,
      fontSize:18,
      fontWeight:FontWeight.w400,

    ),),
  ),
);