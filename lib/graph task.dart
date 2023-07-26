import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  const Graph({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GRAPH DATA",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                width:20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
              ),
              Text("Java",style: TextStyle(fontWeight: FontWeight.w500),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.green, borderRadius: BorderRadius.circular(20)),
              ),
              Text("C++",style: TextStyle(fontWeight: FontWeight.w500),)
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(20)),
              ),
              Text("Dart",style: TextStyle(fontWeight: FontWeight.w500),)
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
              ),
              Text("Python",style: TextStyle(fontWeight: FontWeight.w500),)
            ],
          ),
          Container(
            width: 400,
            height: 450,
            color: Colors.lightBlueAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 25,),
            Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 25,
                      height: 350,
                      color: Colors.red,
                    ),
                  ]
                ),
                Row(
                  children: [
                    SizedBox(width: 25,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 25,
                          height: 150,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 25,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 25,
                          height: 80,
                          color: Colors.purpleAccent,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 25,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 25,
                          height: 250,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
