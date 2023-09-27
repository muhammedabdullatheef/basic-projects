import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Tsk2 extends StatefulWidget {
  const Tsk2({super.key});

  @override
  State<Tsk2> createState() => _Tsk2State();
}

class _Tsk2State extends State<Tsk2> {
  bool _islogin=false;
  // String MSG="";
 late SharedPreferences prefer;

  Future<void> setdata()async {
   prefer= await SharedPreferences.getInstance();

   setState(() {
     _islogin= !_islogin;
     prefer.setBool("Show", _islogin);
   });
  }
  Future<void>getData()async {
    prefer= await SharedPreferences.getInstance();
    setState(() {
      _islogin=prefer.getBool("Show")??false;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              setdata();
            }, child:
            _islogin?Text("you are logged in , please logout"):
            Text("login")),
          ),
        ],
      ),
    );
  }
}
