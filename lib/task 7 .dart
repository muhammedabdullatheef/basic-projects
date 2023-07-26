import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class task7 extends StatelessWidget {
  const task7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 2, bottom: 20, top: 20),
                child: Container(
                  width: 160,
                  height: 60,
                  child: TextField(
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    decoration: InputDecoration(
                        labelText: "First name",
                        labelStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 20, top: 20),
                child: Container(
                  width: 160,
                  height: 60,
                  child: TextField(
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    decoration: InputDecoration(
                        labelText: "Last name",
                        labelStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 350,
            height: 60,
            child: TextField(
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              decoration: InputDecoration(
                  labelText: "Place",
                  labelStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            height: 60,
            child: TextField(
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              decoration: InputDecoration(
                  labelText: "Email_ID",
                  labelStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            height: 60,
            child: TextField(
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              decoration: InputDecoration(
                  labelText: "Phone no",
                  labelStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              keyboardType: TextInputType.phone,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                width: 200,
                height: 60,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 20),
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
