import 'package:flutter/material.dart';

class FutureBuilderTsk extends StatefulWidget {
  const FutureBuilderTsk({super.key});

  @override
  State<FutureBuilderTsk> createState() => _FutureBuilderTskState();
}

class _FutureBuilderTskState extends State<FutureBuilderTsk> {
  Future<String>getphoto()async{
    await Future.delayed(Duration(seconds: 5));
    return "https://shorturl.at/fgzGR";
 
    // return 34;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getphoto();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getphoto(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting){
              return CircularProgressIndicator();
            }if(snapshot.hasError){
              return Text("some error");
            }else{
              return Image(image: NetworkImage("${snapshot.data}"));
            }
          },

        ),
      ),

    );
  }
}
