import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat page",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 300,
            height: 300,
            color: Colors.red,
            child: Center(child: TextButton(onPressed: () { Navigator.pop(context); },
            child: Text("home",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),)))),
      ),
    );
  }
}
