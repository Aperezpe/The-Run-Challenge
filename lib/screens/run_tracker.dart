import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


import 'package:flutter/material.dart';
import 'dart:async';
import 'package:pedometer/pedometer.dart';

void main() => runApp(new RunTracker());

class RunTracker extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<RunTracker> {
  Pedometer _pedometer;
  StreamSubscription<int> _subscription;
  String _stepCountValue = 'unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    startListening();
  }

  void onData(int stepCountValue) {
    print(stepCountValue);
  }

  void startListening() {
    _pedometer = new Pedometer();
    _subscription = _pedometer.pedometerStream.listen(_onData,
        onError: _onError, onDone: _onDone, cancelOnError: true);
  }

  void stopListening() {
    _subscription.cancel();
  }

  void _onData(int stepCountValue) async {
    setState(() => _stepCountValue = "$stepCountValue");
  }

  void _onDone() => print("Finished pedometer tracking");

  void _onError(error) => print("Flutter Pedometer Error: $error");


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Pedometer example app'),
        ),
        body: new Text('Step count: $_stepCountValue')
      ),
    );
  }
}

















// class RunTracker extends StatelessWidget {
//    TextEditingController emailEditingContrller = TextEditingController();
//    TextEditingController passwordEditingContrller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       //resizeToAvoidBottomInset: false,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             color: Colors.white,
//             padding: EdgeInsets.all(24),
//             child: Center(
//               child: Column(
//                 children: <Widget>[
//                   SizedBox(
//                     height: 60,
//                   ),
                 
// Row(
//   mainAxisSize: MainAxisSize.min,
//   children: <Widget>[
//     SizedBox(width: 20.0, height: 100.0),
//     Text(
//       "Please",
//       style: TextStyle(fontSize: 43.0),
//     ),
//     SizedBox(width: 20.0, height: 100.0),
//     RotateAnimatedTextKit(
//       onTap: () {
//         print("Tap Event");
//       },
//       text: ["Log In"],
//       textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon"),
//     ),
//   ],
// ),


                  
//                   SizedBox(
//                     height: 80,
//                   ),
//                   TextField(
//                     autofocus: false,
//                     obscureText: false,
//                     keyboardType: TextInputType.emailAddress,
//                     controller: emailEditingContrller,
//                     decoration: InputDecoration(
//                         labelText: "Email",
//                         hintText: "Email",
//                         labelStyle: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                         ),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(4)),
//                             borderSide: BorderSide(
//                                 width: 1,
//                                 color: Colors.green,
//                                 style: BorderStyle.solid))),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   TextField(
//                     autofocus: false,
//                     obscureText: true,
//                     keyboardType: TextInputType.text,
//                     controller: passwordEditingContrller,
//                     decoration: InputDecoration(
//                         labelText: "Password",
//                         hintText: "Password",
//                         labelStyle: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                         ),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(4)),
//                             borderSide: BorderSide(
//                                 width: 1,
//                                 color: Colors.green,
//                                 style: BorderStyle.solid))),
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   ButtonTheme(
//                     //elevation: 4,
//                     //color: Colors.green,
//                     minWidth: double.infinity,
//                     child: MaterialButton(
//                          onPressed: () {},
//                       textColor: Colors.white,
//                       color: Colors.green,
//                       height: 50,
//                       child: Text("LOGIN"),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }