import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
        () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Login1()));
        },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.grey[900]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex:2,
                child:Container(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage('images/bat_logo.jpg'),
                        radius: 100,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'I AM BATMAN',
                        style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex:1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      'Please Wait',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor:Colors.grey[800],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Personal Information',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Light'),
        backgroundColor: Colors.grey[900],
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NinjaCard1()));
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
        child: Padding(
          padding:EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/batman.jpeg'),
                  radius: 100,
                ),
              ),
              Divider(
                height:60.0,
                color: Colors.black,
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 2.0),
                  Text(
                    'iambatman@batcave.com',
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 15.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                'REAL NAME:',
                style: TextStyle(
                  color:Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Bruce Thomas Wayne',
                style: TextStyle(
                  color:Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'CURRENT ALIAS:',
                style: TextStyle(
                  color:Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Batman',
                style: TextStyle(
                  color:Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'GENDER:',
                style: TextStyle(
                  color:Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Male',
                style: TextStyle(
                  color:Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Place of Birth:',
                style: TextStyle(
                  color:Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Crest Hill, Bristol Township, Gotham City, New Jersey',
                style: TextStyle(
                  color:Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'BASE OF OPERATIONS:',
                style: TextStyle(
                  color:Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The Bat Cave',
                style: TextStyle(
                  color:Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'CITIZENSHIP:',
                style: TextStyle(
                  color:Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'American',
                style: TextStyle(
                  color:Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'OCCUPATION:',
                style: TextStyle(
                  color:Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Businessman, Vigilante',
                style: TextStyle(
                  color:Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login1()));
                },
                color: Colors.redAccent,
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class NinjaCard1 extends StatefulWidget {
  @override
  _NinjaCard1State createState() => _NinjaCard1State();
}

class _NinjaCard1State extends State<NinjaCard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      backgroundColor:Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Personal Information',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Dark'),
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NinjaCard()));
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
        child: Padding(
          padding:EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/batman.jpeg'),
                  radius: 100,
                ),
              ),
              Divider(
                height:60.0,
                color: Colors.brown[600],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.brown,
                  ),
                  SizedBox(width: 2.0),
                  Text(
                    'iambatman@batcave.com',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 15.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                'REAL NAME:',
                style: TextStyle(
                  color:Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Bruce Thomas Wayne',
                style: TextStyle(
                  color:Colors.blueAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'CURRENT ALIAS:',
                style: TextStyle(
                  color:Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Batman',
                style: TextStyle(
                  color:Colors.blueAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'GENDER:',
                style: TextStyle(
                  color:Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Male',
                style: TextStyle(
                  color:Colors.blueAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Place of Birth:',
                style: TextStyle(
                  color:Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Crest Hill, Bristol Township, Gotham City, New Jersey',
                style: TextStyle(
                  color:Colors.blueAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'BASE OF OPERATIONS:',
                style: TextStyle(
                  color:Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'The Bat Cave',
                style: TextStyle(
                  color:Colors.blueAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'CITIZENSHIP:',
                style: TextStyle(
                  color:Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'American',
                style: TextStyle(
                  color:Colors.blueAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'OCCUPATION:',
                style: TextStyle(
                  color:Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Businessman, Vigilante',
                style: TextStyle(
                  color:Colors.blueAccent,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                color: Colors.red,
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  bool _obscureText= true;
  String email='iambatman@batcave.com';
  String password='catwomanisbae';

  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      obscureText: false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      validator: (val) => !val.contains(email)?'Invalid Email':null,
    );
    final passwordField = TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        suffixIcon: IconButton(
        onPressed: _toggle,
        icon: Icon(Icons.remove_red_eye),
      ),
      ),
      validator: (val) => !val.contains(password)?'Invalid Password':null,
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          if( formKey.currentState.validate()){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NinjaCard1()));
          }
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 80.0),
                    Center(
                      child:CircleAvatar(
                        backgroundImage: AssetImage('images/logo.png'),
                        radius: 80.0,
                      ),
                    ),
                    SizedBox(height: 45.0),
                    emailField,
                    SizedBox(height: 25.0),
                    passwordField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButon,
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Dark'),
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login1()));
        },
      ),
    );
  }
}

class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1>{

  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  bool _obscureText= true;
  String email='iambatman@batcave.com';
  String password='catwomanisbae';

  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      cursorColor: Colors.white ,
      obscureText: false,
      decoration: InputDecoration(
          fillColor: Colors.grey[600],
          filled:true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Email",
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      validator: (val) => !val.contains(email)?'Invalid Email':null,
    );
    final passwordField = TextFormField(
      cursorColor:  Colors.white,
      obscureText: _obscureText,
      decoration: InputDecoration(
          fillColor:  Colors.grey[600],
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Password",
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          suffixIcon: IconButton(
            onPressed: _toggle,
            icon: Icon(Icons.remove_red_eye),
          ),
      ),
      validator: (val) => !val.contains(password)?'Invalid Password':null,

    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.black,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          if( formKey.currentState.validate()){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NinjaCard()));
          }
},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.grey[850],
      body: SingleChildScrollView(
        child: Form(
         key: formKey,
          child: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 80.0),
                    Center(
                      child:CircleAvatar(
                        backgroundImage: AssetImage('images/logo.png'),
                        radius: 80.0,
                      ),
                    ),
                    SizedBox(height: 45.0),
                    emailField,
                    SizedBox(height: 25.0),
                    passwordField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButton,
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Light'),
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()));
        },
      ),
    );
  }
}