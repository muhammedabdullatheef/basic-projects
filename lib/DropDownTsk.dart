import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownTsk extends StatefulWidget {
  const DropDownTsk({super.key});

  @override
  State<DropDownTsk> createState() => _DropDownTskState();
}

class _DropDownTskState extends State<DropDownTsk> {
  var mounths = [
    "jan",
    "feb",
    "mrh",
    "apr",
    "mey",
    "jun",
    "jly",
    "aut",
    "sep",
    "oct",
    "nov",
    "dec"
  ];
  String selectvalue = "sep";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 100,
            height: 60,
            child: DropdownButton(
              value: selectvalue,
                items: mounths.map((String i) {
                  return DropdownMenuItem(
                    child: Text(i),
                    value: i,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectvalue = value.toString();
                  });
                }),
          ),
        ),
      ),
    );
  }
}
