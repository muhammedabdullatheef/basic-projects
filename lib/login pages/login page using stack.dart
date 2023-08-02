import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  // const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                top: 30,
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.blue,
                ),
              ),

              Positioned(
                top: 140,
                left: 140,
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Colors.teal[400],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
