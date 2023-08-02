import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List nameornumber = [
    "6235428262",
    "FUTURA LABS",
    "Flutter sourav evaluation",
    "AMAL Du",
    "C2A",
    "Sfwan Du",
    "9779428262",
    "Favaz"
  ];
  List messages = [
    "hello",
    "inn evaluation und",
    "~Placements Futura:Flutt..",
    "Evide",
    "ATHUL:Happy bdy @~nihal..",
    "ok da",
    "Hi",
    "good night"
  ];
  List dete = [
    "1.57 PM",
    "12.45 AM",
    "12:34 AM",
    "11:00 AM",
    "10:08 AM",
    "9:57 AM",
    "9:30 AM",
    "7/24/23"
  ];
  List cunt=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal[700],
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          backgroundColor: Colors.teal[700],
          actions: [
            Row(
              children: [
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            PopupMenuButton(
                color: Colors.white,
                itemBuilder: (BuildContext context) => [
                      PopupMenuItem(child: Text("New Group")),
                      PopupMenuItem(child: Text("New broadcast")),
                      PopupMenuItem(child: Text("Linked devices")),
                      PopupMenuItem(child: Text("Payments")),
                      PopupMenuItem(child: Text("Settings")),
                    ]),
          ]),
      body: ListView.separated(
          itemCount: nameornumber.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar( radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white54,
                ),),
              // Icon(icons[index], color: Colors.blueGrey, size: 60),
              title: Text(nameornumber[index]),
              subtitle: Text(messages[index]),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 6),
                    child: Text(dete[index]),
                  ),
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.teal[400],
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            );

          }, separatorBuilder: (BuildContext context, int index) { return Divider(); },),
    );
  }
}
