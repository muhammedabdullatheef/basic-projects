import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class task2 extends StatelessWidget {
  const task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("task2"),
      ),
      body: Center(
        child: Container(
          color: Colors.deepOrange,
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
            ),
          ),
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
