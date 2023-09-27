import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({super.key});

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  List img =[
    "https://shorturl.at/fjkrZ",
    "https://shorturl.at/fjkrZ",
    "https://shorturl.at/fjkrZ",
    "https://shorturl.at/fjkrZ",
    "https://shorturl.at/fjkrZ",
    "https://shorturl.at/fjkrZ",
    "https://shorturl.at/fjkrZ",
    "https://shorturl.at/fjkrZ",
    "https://shorturl.at/fjkrZ",
    "https://shorturl.at/fjkrZ",
    "https://shorturl.at/fjkrZ",
    "https://shorturl.at/fjkrZ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5,mainAxisSpacing: 5),itemCount: img.length,itemBuilder: (context,int index){
        return Container(
          height: 100,
          width: 100,
          child: Image(image: NetworkImage(img[index]),fit: BoxFit.fill,),
        );
      })
      ,
    );
  }
}
