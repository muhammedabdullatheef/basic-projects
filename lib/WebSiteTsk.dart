import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebSite extends StatefulWidget {
  const WebSite({super.key});

  @override
  State<WebSite> createState() => _WebSiteState();
}

class _WebSiteState extends State<WebSite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width/3,
            color: Colors.yellow[700],
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 25,),
                SizedBox(
                  height: 250,
                  child: Text(
                    "Let's get you set up",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                Text("it should only take a couple of minutes"),
                Text("to pair with your watch"),
                SizedBox(height: 25,),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: Icon(CupertinoIcons.right_chevron,color: Colors.white,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
