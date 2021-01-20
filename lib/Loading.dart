import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    super.initState();

    Timer(
      Duration(milliseconds: 1600),
        () => Navigator.pushReplacementNamed(
          context,
          '/'
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpinKitRotatingCircle(
            color: Colors.redAccent,
            size: 50.0,
          ),
          SizedBox(height: 20.0,),
          Text('Thoughtfully',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),)
        ],
      )
    );
  }
}

