import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackTasck extends StatelessWidget {
  const StackTasck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            height: 600,
            width: 600,
            child: Stack(
        children: [
            Positioned(
              top: 100,
              left: 120,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/images/2.jpg"),
              ),
            ),CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/images/3.jpg"),
            ),Positioned(
            left: 220,
              top: 220,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/images/20230530170555_IMG_0801.jpg"),
              ),
            ),
        ],
      ),
          )),
    );
  }
}
