import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GmailUi extends StatefulWidget {
  const GmailUi({super.key});

  @override
  State<GmailUi> createState() => _GmailUiState();
}

class _GmailUiState extends State<GmailUi> {
  List icon =[
    "assets/images/download.png",
    "assets/images/images.png",
    "assets/images/IMG_20230802_100851.jpg",
    "assets/images/spotify.png",
    "assets/images/insta.jpg",
    "assets/images/G.jpg",
    "assets/images/Linked.in.png",
    "assets/images/amazon.jpg",
    "",
    "assets/images/G.jpg",
  ];
  List nameornumber = [
    "Promotins",
    "Social",
    "Futura Labs",
    "Spotify",
    "Instagram",
    "GitHub",
    "LinkedIn",
    "Amazon.in",
    "Indira Gandhi National Open..",
    "GitHub",
  ];
  List messages = [
    "AirTopTools,AiTopTools",
    "Instagram",
    "",
    "Spotify Premium for free,click..",
    "New login to instagram from...",
    "[GitHub] please verify your device",
    "Futura Labs and others shere their..",
    "Delivered:your Amazon package..",
    "Confirmation Mail",
    "[GitHub] Welcome to GitHub..",
  ];
  List dete = [
    "41 new",
    "46 new",
    "Jul 27",
    "Jul 13",
    "Jul 11",
    "Jul 10",
    "Jul 9",
    "Jun 28",
    "Jun 28",
    "Jun 24",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigoAccent[500],
        child: Icon(
          Icons.mode_edit_outline_outlined,
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
              backgroundColor: Colors.redAccent,
              child: Text(
                "M",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body:
      SafeArea(
        child:
           ListView.builder(
              itemCount: nameornumber.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading:
                  icon[index]==""?CircleAvatar(radius: 30, backgroundColor: Colors.blueGrey[300],
                    child: Icon(
                      Icons.person,
                      size: 45,
                      color: Colors.white,
                    ),):
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(icon[index]),
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
