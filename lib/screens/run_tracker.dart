import 'dart:core';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pedometer/pedometer.dart';

class RunTracker extends StatefulWidget {
  @override
  _RunTrackerState createState() => _RunTrackerState();
}

class _RunTrackerState extends State<RunTracker> {
  String showSteps = "";
  String _mi = "Unknown";
  String _calories = "Unknown";
  String _stepCountValue = 'Unknown';
  StreamSubscription<int> _subscription;

  double _numberx; //step count
  double _mix; //num kilomenter
  double burnedx; // quant calories burned
  double _convert;

  // @override
  // void initState() {
  //   super.initState();
  //   setUpPedometer();
  // }

  // void setUpPedometer() {
  //   Pedometer pedometer = new Pedometer();
  //   _subscription = pedometer.pedometerStream.listen(_onData,
  //       onError: _onError, onDone: _onDone, cancelOnError: true);
  // }

  // void _onDone() {}

  // void _onError(error) {
  //   print("Flutter Pedometer Error: $error");
  // }

  // void _onData(int stepCountValue) async {
  //   print(stepCountValue);

  //   setState(() {
  //     _stepCountValue = "$stepCountValue";
  //     print(_stepCountValue);
  //   });

  //   var distance = stepCountValue;
  //   double y = (distance + .0); //convert a double, exit multiple form

  //   setState(() {
  //     _numberx = y;
  //   });

  //   var long3 = (_numberx / 100);
  //   long3 = num.parse(y.toStringAsFixed(4));
  //   var long4 = (long3 / 1000);
  //   getDistanceRun(_numberx);

  //   setState(() {
  //     _convert = long4;
  //     print("_convert: " + _convert.toString());
  //   });
  // }

  // void getDistanceRun(double _numberx) {
  //   var distance = ((_numberx * 78) / 100000);
  //   distance = num.parse(distance.toStringAsFixed(2));
  //   setState(() {
  //     _mi = "$distance";
  //     print(_mix);
  //   });
  // }

  // void getBurnedRun() {
  //   setState(() {
  //     _calories = "$_mi";
  //     print(_calories);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Run Tracker"),
      ),
      body: ListView(padding: EdgeInsets.all(5.0), children: <Widget>[
        Text("cool"),
        Text("nice"),
        Text("Perro"),
        Text("Cool")
      ],)
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: Text("Run Tracker"),
  //       ),
  //       body: new ListView(padding: EdgeInsets.all(5.0), children: <Widget>[
  //         Container(
  //           padding: EdgeInsets.only(top: 10.0),
  //           width: 250, //ancho
  //           height: 250, //largo tambien por numero height: 300
  //           decoration: BoxDecoration(
  //               gradient: LinearGradient(
  //                 begin: Alignment
  //                     .bottomCenter, //cambia la iluminacion del degradado
  //                 end: Alignment.topCenter,
  //                 colors: [Color(0xFFA9F5F2), Color(0xFF01DFD7)],
  //               ),
  //               borderRadius: BorderRadius.only(
  //                 bottomLeft: Radius.circular(27.0),
  //                 bottomRight: Radius.circular(27.0),
  //                 topLeft: Radius.circular(27.0),
  //                 topRight: Radius.circular(27.0),
  //               )),
  //           child: new CircularPercentIndicator(
  //             radius: 150.0,
  //             lineWidth: 13.0,
  //             animation: true,
  //             center: new Row(
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               children: <Widget>[
  //                 Container(
  //                   padding: EdgeInsets.only(left: 20.0),
  //                   child: Icon(
  //                     FontAwesomeIcons.walking,
  //                     size: 30.0,
  //                     color: Colors.white,
  //                   ),
  //                 ),
  //                 Container(
  //                     child: Text(
  //                   '$_stepCountValue',
  //                   style: TextStyle(
  //                       fontWeight: FontWeight.bold,
  //                       fontSize: 20.0,
  //                       color: Colors.purpleAccent),
  //                 ))
  //               ],
  //             ),
  //             percent: 0,
  //             // percent: _convert,
  //             footer: Text(
  //               'Pasos $_stepCountValue',
  //               style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 12.0,
  //                   color: Colors.black),
  //             ),
  //             circularStrokeCap: CircularStrokeCap.round,
  //             progressColor: Colors.purpleAccent,
  //           ),
  //         ),
  //         Divider(
  //           height: 10,
  //         ),
  //         Container(
  //           padding: EdgeInsets.only(left: 25.0, top: 10.0, bottom: 10.0),
  //           color: Colors.transparent,
  //           child: Row(
  //             children: <Widget>[
  //               Container(
  //                 child: Card(
  //                   child: new Card(
  //                     child: Container(
  //                       height: 80.0,
  //                       width: 80.0,
  //                       decoration: BoxDecoration(
  //                         image: DecorationImage(
  //                           image: AssetImage("assets/images/distance.png"),
  //                           fit: BoxFit.fitWidth,
  //                           alignment: Alignment.topCenter,
  //                         ),
  //                       ),
  //                       child: Text(
  //                         '$_mi Mi',
  //                         textAlign: TextAlign.right,
  //                         style: TextStyle(
  //                             fontWeight: FontWeight.bold, fontSize: 14.0),
  //                       ),
  //                     ),
  //                     color: Colors.white54,
  //                   ),
  //                 ),
  //               ),
  //               VerticalDivider(
  //                 width: 20.0,
  //               ),
  //               Container(
  //                 child: Card(
  //                   child: Container(
  //                     height: 80.0,
  //                     width: 80.0,
  //                     decoration: BoxDecoration(
  //                       image: DecorationImage(
  //                         image: AssetImage("assets/images/burned.png"),
  //                         fit: BoxFit.fitWidth,
  //                         alignment: Alignment.topCenter,
  //                       ),
  //                     ),
  //                   ),
  //                   color: Colors.transparent,
  //                 ),
  //               )
  //             ],
  //           ),
  //         )
  //       ]));
  // }
}
