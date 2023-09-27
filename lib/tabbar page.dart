import 'package:flutter/material.dart';

class TabBarTsk extends StatefulWidget {
  const TabBarTsk({super.key});

  @override
  State<TabBarTsk> createState() => _TabBarTskState();
}

class _TabBarTskState extends State<TabBarTsk> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          bottom: TabBar(tabs: [
            Tab(child: Text("Chat"),),
            Tab(child: Text("Status"),),
            Tab(child: Text("Calls"),),
          ]),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
