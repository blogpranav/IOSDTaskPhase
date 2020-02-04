
import 'package:flutter/material.dart';
import 'MemberDetails.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();

  String _password;
  String _username;
  String op;
  @override
  void initState() {
    super.initState();
    _password="1234";
    _username='swasthik';
    op="";
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("MEMBER LOGIN"),)
      ),
      
      body:Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left:150.0,top:50.0)),
                Text("USERNAME : ",style: TextStyle(
               fontSize: 15
          ),),
          
             TextField(
              controller: username,
            decoration:InputDecoration(
              border: InputBorder.none,
              hintText:'Enter username here ...',
              ),
            ),
             
          Padding(padding: EdgeInsets.only(left:150.0,top:50.0)),
                Text("PASSWORD : ",style: TextStyle(
            fontSize: 15,)),
          
             TextField(
              controller: password,
              obscureText:true,
            decoration:InputDecoration(
              border: InputBorder.none,
              hintText:'Enter password here ...',
              ), 
            ),
          
            ],   
          ),
          
           Padding(padding: EdgeInsets.only(left: 300,top:30)),
          Container(
            width: 90,
            height: 90,
            child:Center(
              child:RaisedButton( 
                color: Colors.orangeAccent,
                child:Text('SUBMIT'),         
                onPressed: (){
                  if(password.text==_password && username.text==_username){
                setState(() {
                      op=("");
                      username.text=("");
                      password.text=("");
                    });
                Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>MemberDetails()),);
                   
                  } else{
                    setState(() {
                      username.text=("");
                      password.text=("");
                      op=("WRONG USERNAME OR PASSWORD");
                    });
                  }},      
            ),
            ),
            
          ),
          Text("$op",style:TextStyle(
               fontSize: 15
          ),),
        ],
          ),
    );
  }
}