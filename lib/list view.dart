import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view"),
        backgroundColor: Colors.purple,
        leading: Icon(Icons.home),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(leading: Icon(Icons.home),title: Text("Home"),trailing: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6,top: 6),
                  child: Text("1.57"),
                ),
                Icon(Icons.search),
              ],
            ),),
              ListTile(title: Text("FUTURA") ,subtitle: Text("flutter"),trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6,top: 6),
                    child: Text("2.57"),
                  ),
                  Icon(Icons.search),
                ],
              ),),
          ],
        ),
      ),
    );
  }
}
