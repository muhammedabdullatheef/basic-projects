import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HttpTsk extends StatefulWidget {
  const HttpTsk({super.key});

  @override
  State<HttpTsk> createState() => _HttpTskState();
}

class _HttpTskState extends State<HttpTsk> {
  Future<Map<String,dynamic>>getphoto()async{
    var res= await get(Uri.parse("https://dog.ceo/api/breeds/image/random"));
    print(res);
    if(res.statusCode == 200) {
      var data = jsonDecode(res.body);
      // print(data.runtimeType);
      return data;
    // }else if (res.statusCode == 400){
    //   var data =jsonDecode(res.body);
    }else{
      throw Exception("Api Mistake");
    }
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
      body: SafeArea(
        child: Center(
          child:FutureBuilder(
            future: getphoto(),
            builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return CircularProgressIndicator();
              }if(snapshot.hasData){
                return Center(
                  child: Column(
                    children: [
                      Center(child: Image(image: NetworkImage("${snapshot.data!["message"]}"))),
                      Text("${snapshot.data!["status"]}"),
                      ElevatedButton(onPressed: (){
                        getphoto();
                        setState(() {

                        });
                      }, child:Icon(Icons.refresh))
                    ],
                  ),
                );
              }
              else{
                return Text("somthing went wrong");
              }
          },

          ),
        ),
      ),
    );
  }
}
