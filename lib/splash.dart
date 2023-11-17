import 'dart:async';

import 'package:bmi/bmiscreen.dart';
import 'package:flutter/material.dart';
class SplahScreen extends StatefulWidget {
  const SplahScreen({super.key});

  @override
  State<SplahScreen> createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 4),
        () =>Navigator.push(
            context, MaterialPageRoute(builder: (context) =>bmiCalculator()))
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/img.png"),
        ),
      )
      ));
  }
}
