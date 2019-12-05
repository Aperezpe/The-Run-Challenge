import 'package:flutter/material.dart';
import 'package:the_run_challenge/screens/login.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SignUp extends StatelessWidget {
   TextEditingController emailEditingContrller = TextEditingController();
   TextEditingController passwordEditingContrller = TextEditingController();
   TextEditingController nameEditingContrller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(24),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
             

Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    SizedBox(width: 20.0, height: 100.0),
    Text(
      "Do",
      style: TextStyle(fontSize: 43.0),
    ),
    SizedBox(width: 20.0, height: 100.0),
    RotateAnimatedTextKit(
      onTap: () {
        print("Tap Event");
      },
      text: ["The", "Run", "Challenge"],
      textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon"),
    ),
  ],
),



                  // Center(
                  //   child: SizedBox(
                  //     width: 100,
                  //     height: 100,
                  //     child: Image.asset('assets/images/girlrun.jpg'),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 80,
                  // ),


 TextField(
                    autofocus: false,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    controller: nameEditingContrller,
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Name",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.green,
                                style: BorderStyle.solid))),
                  ),

 SizedBox(
                    height: 30,
                  ),



                  TextField(
                    autofocus: false,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailEditingContrller,
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.green,
                                style: BorderStyle.solid))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    autofocus: false,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    controller: passwordEditingContrller,
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.green,
                                style: BorderStyle.solid))),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ButtonTheme(
                    //elevation: 4,
                    //color: Colors.green,
                    minWidth: double.infinity,
                    child: MaterialButton(
                      onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  );},
                      textColor: Colors.white,
                      color: Colors.green,
                      height: 50,
                      child: Text("Sign Up"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}