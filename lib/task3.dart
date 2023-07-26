import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PROFILE",
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Container(
          width: 380,
          height: 600,
          color: Colors.lightBlueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(300)),
                  child: Center(
                      child: Text(
                    "LATHEEF",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  )),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("phono no:"),
                    Container(
                      width: 280,
                      height: 25,
                      color: Colors.deepOrange,
                      child: Center(
                        child: Text(
                          "6236428262",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("email_id:"),
                    Container(
                      width: 280,
                      height: 25,
                      color: Colors.deepOrange,
                      child: Center(
                          child: Text(
                        "muhammedabdullatheefnp@gmail.com",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
