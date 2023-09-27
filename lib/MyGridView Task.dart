import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyGrigView extends StatefulWidget {
  const MyGrigView({super.key});

  @override
  State<MyGrigView> createState() => _MyGrigViewState();
}

class _MyGrigViewState extends State<MyGrigView> {
  void Mytoast (String msg,Color clr){
    Fluttertoast.showToast(msg:msg ,backgroundColor:clr);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 4,mainAxisSpacing: 5,crossAxisSpacing: 5,children: [
        InkWell(
          onTap: (){
            Mytoast("This is yellow", Colors.yellow);
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.yellow),
          ),
        ),InkWell(
          onTap: (){
            Mytoast("Purple", Colors.purple);
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.purple),
          ),
        ),Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.green),
        ),Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.red),
        ),Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.yellow),
        ),Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.purple),
        ),Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.green),
        ),Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.red),
        ),
      ],),
    );
  }
}
