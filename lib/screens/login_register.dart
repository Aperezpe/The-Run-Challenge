import 'package:flutter/material.dart';
import 'package:the_run_challenge/screens/login.dart';
import 'package:the_run_challenge/screens/signup.dart';

class Login_Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(-0.45,0),
                  image: NetworkImage(
                    "https://i.pinimg.com/originals/43/05/eb/4305ebbe02c3eb550ff3d72b8e9d31c8.jpg",
                  ),
                  fit: BoxFit.fitHeight),
            ),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.5),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Column(
              children: <Widget>[
                Spacer(),
                Spacer(),
                Row(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      'The',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 80.0,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      'Run',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 80.0,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      'Challenge',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 80.0,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height:105.0),
        FlatButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(128.0),),
        color: Colors.blue[300],
        textColor: Colors.white,
        padding: EdgeInsets.all(15.0),
        onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SignUp()),
  );},
        child: Text(
          "              Sign Up              ",
          style: TextStyle(
            fontSize: 30.0,fontFamily: 'Avenir',
          ),
        ),
      ),
    SizedBox(height:20.0),
    Row(children: <Widget>[
    Text("       Have an account?",style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Avenir',
                          
                          color: Color.fromRGBO(255, 255, 255, 1)),),
   
   
    // Text("Log In",style: TextStyle(
    //                       fontSize: 20.0,
    //                       fontFamily: 'Avenir',
    //                     decoration: TextDecoration.underline,
    //                       color: Color.fromRGBO(255, 255, 255, 1)),),
    
   FlatButton(
          onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  );},
          child: Text("Log In", style: TextStyle(
             fontFamily: 'Avenir',fontSize: 20.0,decoration: TextDecoration.underline,
              color: Color.fromRGBO(255, 255, 255, 1)
            )
          ),
          
        ) ],),
    SizedBox(height:40.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
