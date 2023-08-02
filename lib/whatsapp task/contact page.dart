import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List Namedata = [
    "Amal du",
    "Ashiq",
    "Ajay",
    "Danish",
    "DQ",
    "Favaz",
    "Futura labs",
    "Latheef",
    "Safwan du",
    "salman",
    "vajid du",
  ];
  List Abouts = [
    "Hey there! I am using WhatsApp",
    "Busy",
    "Hey there! I am using WhatsApp",
    "Can't talk, WhatsApp only",
    "Hey there! I am using WhatsApp",
    "Available",
    "At work",
    "Hey there! I am using WhatsApp",
    "Urgent call ony",
    "At work",
    "In a meeting ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Select contact",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60,bottom: 10),
              child: Text(
                "11 contacts",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.teal[500],
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
              )
            ],
          ),
          PopupMenuButton(
              color: Colors.white,
              itemBuilder: (BuildContext context) => [
                    PopupMenuItem(child: Text("Ivalite a frind")),
                    PopupMenuItem(child: Text("Contacts")),
                    PopupMenuItem(child: Text("Refrash")),
                    PopupMenuItem(child: Text("Help")),
                  ]),
        ],
      ),
      body: ListView.builder(
          itemCount: Namedata.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                size: 60,
                color: Colors.blueGrey[200],
              ),
              title: Text(Namedata[index]),
              subtitle: Text(Abouts[index]),
            );
          }),
    );
  }
}
