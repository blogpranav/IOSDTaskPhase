import 'Login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  
  void initState(){
    super.initState();
    new Future.delayed(
      const Duration(milliseconds:1300),
      ()=>Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=>Login()),));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child:Column(
          children: <Widget>[
                 Padding(padding: EdgeInsets.only(top:300),),
                Container(
                  width: 130,
                  height:100,
                  color: Colors.redAccent,
               child:Image.asset('assets/iosdlogo.png',
               repeat: ImageRepeat.noRepeat,),
                ) 
          ],
        )
      ),
    );
  }
}