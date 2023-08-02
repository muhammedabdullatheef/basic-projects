import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GmailUi extends StatefulWidget {
  const GmailUi({super.key});

  @override
  State<GmailUi> createState() => _GmailUiState();
}

class _GmailUiState extends State<GmailUi> {
  List nameornumber = [
    "6235428262",
    "FUTURA LABS",
    "Flutter sourav evaluation",
    "AMAL Du",
    "C2A",
    "Sfwan Du",
    "9779428262",
    "Favaz",
    "6235428262",
    "6234528262",
  ];
  List messages = [
    "hello",
    "inn evaluation und",
    "~Placements Futura:Flutt..",
    "Evide",
    "ATHUL:Happy bdy @~nihal..",
    "ok da",
    "Hi",
    "Hi",
    "good night",
    "good night",
  ];
  List dete = [
    "1.57 PM",
    "12.45 AM",
    "12:34 AM",
    "11:00 AM",
    "10:08 AM",
    "9:57 AM",
    "9:30 AM",
    "7/24/23",
    "7/24/23",
    "7/23/23",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
        child: Icon(
          Icons.edit,
          color: Colors.black,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 150,
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.pink[800],
                      child: Text(
                        "M",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    Text(
                      "Gmail",
                      style: TextStyle(fontSize: 25,color: Colors.pink[800]),
                    ),
                    Text(
                      "muhammedabdullatheefnp@gmail.com",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.all_inbox),
              title: Text("All inboxs"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Primary"),
            ),
            ListTile(
              leading: Icon(Icons.local_offer_outlined),
              title: Text("Promotions"),
            ),
            ListTile(
              leading: Icon(Icons.people_alt_outlined),
              title: Text("Social"),
            ),
            ListTile(
              leading: Icon(Icons.star_border_sharp),
              title: Text("Starred"),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("All labels",style: TextStyle(color: Colors.grey[700]),),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text("Snoozed"),
            ),
            ListTile(
              leading: Icon(Icons.label_important),
              title: Text("Importance"),
              trailing: Text("5"),
            ),
            ListTile(
              leading: Icon(Icons.send_rounded),
              title: Text("Sent"),
            ),
            ListTile(
              leading: Icon(Icons.schedule_send),
              title: Text("Scheduled"),
            ),
            ListTile(
              leading: Icon(Icons.send_time_extension_sharp),
              title: Text("Outbox"),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text("Drafts"),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("All mail"),
              trailing: Text("42"),
            ),
            ListTile(
              leading: Icon(Icons.report_gmailerrorred),
              title: Text("Spam"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Google apps",style: TextStyle(color: Colors.grey[700]),),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("Calender"),
            ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text("Contacts"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),  ListTile(
              leading: Icon(Icons.help_outline_outlined),
              title: Text("Help & feedback"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Container(
          height: 50,
          width: 250,
          child: TextField(style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          decoration: InputDecoration(
            labelText: "Search ",
            labelStyle: TextStyle(
                color: Colors.blueGrey,
                fontSize: 20,
                fontWeight: FontWeight.w500),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40))),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.pink[800],
              child: Text(
                "M",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: nameornumber.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white54,
                  ),
                ),
                // Icon(icons[index], color: Colors.blueGrey, size: 60),
                title: Text(nameornumber[index]),
                subtitle: Text(messages[index]),
                trailing: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6, top: 6),
                      child: Text(dete[index]),
                    ),
                    Icon(Icons.star_border_sharp),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
