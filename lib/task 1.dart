import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Languages extends StatelessWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Languages"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Container(width: 100,
              color: Colors.redAccent,
              height: 150,
              child: Center(child: Text("dart")),
            ),
              Container(width: 100,
                height: 150,
                color: Colors.amber,
                child: Center(child: Text("java")),
              ),
              Container(width: 100,
                  height: 150,
                  color: Colors.green,
                  child:Center( child: Text("php")
                    ,))],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Container(width: 100,
              color: Colors.redAccent,
              height: 150,
              child: Center(child: Text("dart")),
            ),
              Container(width: 100,
                height: 150,
                color: Colors.amber,
                child: Center(child: Text("java")),
              ),
              Container(width: 100,
                  height: 150,
                  color: Colors.green,
                  child:Center( child: Text("php")
                    ,))],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Container(width: 100,
              color: Colors.redAccent,
              height: 150,
              child: Center(child: Text("dart")),
            ),
              Container(width: 100,
                height: 150,
                color: Colors.amber,
                child: Center(child: Text("java")),
              ),
              Container(width: 100,
                  height: 150,
                  color: Colors.green,
                  child:Center( child: Text("php")
                    ,))],
          ),
        ],
      ),


    );


  }
}
