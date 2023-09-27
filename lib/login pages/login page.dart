import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110,bottom: 30),
                child: Text("Login",style: TextStyle(fontSize: 60,fontWeight: FontWeight.w700,color: Colors.purple[900]),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50,bottom:20),
                child: Container(
                  width: 300,
                  height: 60,
                  child: TextField( style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),

                ),
                ),
              ),
              Container(
                width: 300,
                height: 60,
                child: TextField( style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Forgot Password",style: TextStyle(color: Colors.blue),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                  child: Container(
                  width: 200,
                  height: 60,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
              ),
            ]
          )),

    );
  }
}
