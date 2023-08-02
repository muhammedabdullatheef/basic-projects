import 'package:app/InkWell%20task/page2.dart';
import 'package:app/InkWell%20task/page3.dart';
import 'package:app/InkWell%20task/page4.dart';
import 'package:app/InkWell%20task/page5.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Page2()));
              },
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
              ),
            ),
            InkWell(
              onTap: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Page3()));},
              child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ),
            InkWell(
              onTap: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Page4()));},
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Page5()));
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
