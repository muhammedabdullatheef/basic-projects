

import 'package:app/task%20shared%20prefer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DurationTsk extends StatefulWidget {
  const DurationTsk({super.key});

  @override
  State<DurationTsk> createState() => _DurationTskState();
}

class _DurationTskState extends State<DurationTsk> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context as BuildContext,
          MaterialPageRoute(
          builder:(BuildContext context)=>
          TskSrdPfr()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          height: 300,
          width: 300,
          child: Image(image: AssetImage("assets/images/futuralabs.jpg")),
        ),
      ),
    );
  }
}
