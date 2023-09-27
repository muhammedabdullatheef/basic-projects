import 'dart:async';

import 'package:flutter/material.dart';

class StreamFunction extends StatefulWidget {
  const StreamFunction({super.key});

  @override
  State<StreamFunction> createState() => _StreamFunctionState();
}

class _StreamFunctionState extends State<StreamFunction> {
  int counter =0;
  StreamController<int> stream =StreamController();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      stream.add(counter++);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    stream.close();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:StreamBuilder<int>(
          stream: stream.stream,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {

            if(snapshot.hasData){
              return Text("${snapshot.data}");
            }if(snapshot.hasError){
              return Text("error");
            }else{
              return Text("somting want wrong");
            }
          },
        ) ,
      ),
    );
  }
}
