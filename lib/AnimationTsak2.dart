import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimeTsk2 extends StatefulWidget {
  const AnimeTsk2({super.key});

  @override
  State<AnimeTsk2> createState() => _AnimeTsk2State();
}

class _AnimeTsk2State extends State<AnimeTsk2> {
  // double t=100;
  // double l=25;
bool change =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(width: 400,
              height: 400,
              child: Stack(
                children: [
                 AnimatedPositioned(
                     top: change?100:300,
                     left: change?-25:100,
                     child: Container(
                   height: 100,
                     width: 100,
                   decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),
                 ), duration: Duration(seconds: 3)),

                  // ElevatedButton(onPressed: (){
                  //
                  // }, child: Text("Click Here")),
                ],
              ),
            ),
            CircularProgressIndicator(),
            ElevatedButton(onPressed: (){
              setState(() {
              change= !change;
              });
            },child: Text("press"))
          ],
        ),
      ),
    );
  }
}
