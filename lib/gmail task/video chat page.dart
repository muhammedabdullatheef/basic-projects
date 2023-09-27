import 'package:flutter/material.dart';

class VideoMeet extends StatefulWidget {
  const VideoMeet({super.key});

  @override
  State<VideoMeet> createState() => _VideoMeetState();
}

class _VideoMeetState extends State<VideoMeet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Center(
            child: Text(
          "Meet",
          style: TextStyle(fontSize: 25),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 17,
              child: Text(
                "M",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.redAccent,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 160,
                height: 40,
                child: Center(
                  child: Text(
                    "New meeting",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blueAccent,
                ),
              ),
              Container(
                width: 160,
                height: 40,
                child: Center(child: Text("Join with a code")),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Center(child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/pic2.jpg"),
            ),),
          ),
          Center(
            child: Column(
              children: [
                Text("Get a link you can",style: TextStyle(fontSize: 20),),
                Text("share",style: TextStyle(fontSize: 20),),
                Text("Tap New meeting to get a link you"),
                Text("can send to people you want to"),
                Text("meet with"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
