import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimTsk extends StatefulWidget {
  const AnimTsk({super.key});

  @override
  State<AnimTsk> createState() => _AnimTskState();
}

class _AnimTskState extends State<AnimTsk> {
  double h=100;
  double w=100;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Sizing();
  }

void Sizing(){
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        h =300;
        w=200;
      });
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(duration: Duration(seconds: 3),
    decoration: BoxDecoration(color: Colors.blue),
    height: h,
    width: w,
          child: Center(child: Text("Futura Labs",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500,fontSize: 25),)),
        ),
      ),
    );
  }
}





