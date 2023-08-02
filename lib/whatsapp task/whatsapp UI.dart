import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class whatsappUI extends StatelessWidget {
  const whatsappUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal[400],
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
          PopupMenuButton(
              color: Colors.white,
              itemBuilder: (BuildContext context) => [
                    PopupMenuItem(child: Text("New Group")),
                    PopupMenuItem(child: Text("New broadcast")),
                    PopupMenuItem(child: Text("Linked devices")),
                    PopupMenuItem(child: Text("Payments")),
                    PopupMenuItem(child: Text("Settings")),
                  ]),
        ]
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white54,
                ),
              ),
              title: Text("6235428262"),
              subtitle: Text("hello"),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 6),
                    child: Text("1.57 PM"),
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white54,
                ),
              ),
              title: Text("FUTURA LABS"),
              subtitle: Text("inn evaluation und"),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 6),
                    child: Text("12.45 AM"),
                  ),
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.teal[400],
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.people_sharp,
                  size: 40,
                  color: Colors.white54,
                ),
              ),
              title: Text("Flutter sourav evaluation"),
              subtitle: Text("~Placements Futura:Flutte"),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 6),
                    child: Text("12:34 AM"),
                  ),
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.teal[400],
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white54,
                ),
              ),
              title: Text("AMAL Du"),
              subtitle: Text("Evide"),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 6),
                    child: Text("11:00 AM"),
                  ),
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.teal[400],
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.people_sharp,
                  size: 40,
                  color: Colors.white54,
                ),
              ),
              title: Text("C2A"),
              subtitle: Text("ATHUL:Happy bdy @~nihal.."),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 6),
                    child: Text("10:08 AM"),
                  ),
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.teal[400],
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white54,
                ),
              ),
              title: Text("Sfwan Du"),
              subtitle: Text("ok da"),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 6),
                    child: Text("9:57 AM"),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white54,
                ),
              ),
              title: Text("9779428262"),
              subtitle: Text("Hi"),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 6),
                    child: Text("9:30 AM"),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white54,
                ),
              ),
              title: Text("Favaz"),
              subtitle: Text("good night"),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 6),
                    child: Text("7/24/23"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
