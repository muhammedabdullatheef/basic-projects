import 'package:flutter/material.dart';

class Person {
  final String name;
  final int age;
  final String email;

  Person({required this.name, required this.age, required this.email});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      age: json['age'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'email': email,
    };
  }
}






class HTTPTSK extends StatefulWidget {
  const HTTPTSK({super.key});

  @override
  State<HTTPTSK> createState() => _HTTPTSKState();
}

class _HTTPTSKState extends State<HTTPTSK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bo
    );
  }
}
