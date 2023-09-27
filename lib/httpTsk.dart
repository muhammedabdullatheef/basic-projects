import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'MyModelClass.dart';

class MyHttpTsk extends StatefulWidget {
  const MyHttpTsk({super.key});

  @override
  State<MyHttpTsk> createState() => _MyHttpTskState();
}

class _MyHttpTskState extends State<MyHttpTsk> {
  Future<myModelClass> getdata() async{
    var res = await http.get(Uri.parse("https://dummyjson.com/products"));
    print(res);
    if(res.statusCode == 200){
      var data =myModelClass.fromJson(jsonDecode(res.body));
      return data;
    }else{
      throw Exception("Api Mistake");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<myModelClass>(
          future: getdata(),
          builder: (BuildContext context, AsyncSnapshot<myModelClass> snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }if(snapshot.hasData) {
              List<Products>? mylist= snapshot.data!.products;
              return ListView.builder(itemCount: mylist!.length ,itemBuilder: (_,index){
                return

                  Card(child: ListTile(
                  leading: Image.network("${mylist![index].images!.first}"),

                title:Text("${mylist![index].title}"),
                  subtitle: Text("price:${mylist![index].price}"),
                ),);
              });
            }else{
              return Center(child: Text("404",style: TextStyle(fontSize: 50),),);
            }
          },
        ),
      ),
    );
  }
}
