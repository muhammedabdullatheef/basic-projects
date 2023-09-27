import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CpiTask extends StatefulWidget {
  const CpiTask({super.key});

  @override
  State<CpiTask> createState() => _CpiTaskState();
}

class _CpiTaskState extends State<CpiTask> {
  bool change =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            SizedBox(
              width: 300,
              height: 500,
              child: Stack(
                children: [
                  AnimatedPositioned(top: change?-100:400,child: SizedBox(width: 300,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    ),
                  ), duration: Duration(seconds: 1)),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(onPressed: (){
                setState(() {
                  change=!change;
                });
              }, child:change? Icon(Icons.refresh_sharp):Icon(Icons.clear)),
            ),
          ],
        ),
      ),
    );
  }
}
