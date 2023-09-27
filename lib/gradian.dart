import 'package:flutter/material.dart';

class Gradian extends StatefulWidget {
  const Gradian({super.key});

  @override
  State<Gradian> createState() => _GradianState();
}

class _GradianState extends State<Gradian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient:
        LinearGradient(colors: [Colors.red,Colors.orange])),
      ),
    );
  }
}
