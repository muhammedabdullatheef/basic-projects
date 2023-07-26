import 'package:flutter/material.dart';

class MyName extends StatefulWidget {
  const MyName({super.key});

  @override
  State<MyName> createState() => _MyNameState();
}

class _MyNameState extends State<MyName> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("MY NAME"),
      ),
      body: Center(
        child: Text("muhammed abdul latheef"),
      ),
    );
    return const Placeholder();


  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Marks extends StatelessWidget {
//   const Marks({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//     );
//   }
// }
