import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stack extends StatelessWidget {
  const stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            CircleAvatar(
              radius: 100,
              // backgroundImage: NetworkImage("https://www.lifeofpix.com/wp-content/uploads/2020/05/IMG_6153edit.jpg"),
              backgroundImage: AssetImage("assets/images/20230530170555_IMG_0801.jpg"),
              ),

            Positioned(
              top: 140,
              left: 140,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal[400],
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
