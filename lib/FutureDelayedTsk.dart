import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'InkWell task/page1.dart';

class FuterDlydTsk extends StatefulWidget {
  const FuterDlydTsk({super.key});

  @override
  State<FuterDlydTsk> createState() => _FuterDlydTskState();
}

class _FuterDlydTskState extends State<FuterDlydTsk> {
int Number=10;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    count();
  }

void count(){
  Future.delayed(Duration(seconds: 1),(){
    if(Number>0){
      setState(() {
        Number--;
      });
      count();
    }else{
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=>Page1()));
    }
  });

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "$Number",style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
