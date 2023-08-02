import 'package:app/seperate%20widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../chat page.dart';
import '../whatsapp task/contact page.dart';

class TelagramUi extends StatefulWidget {
  // const TelagramUi({super.key});
  @override
  State<TelagramUi> createState() => _TelagramUiState();
}

class _TelagramUiState extends State<TelagramUi> {
  bool nightmode = true;

  List dp =[
    "assets/images/20230530170555_IMG_0801.jpg",
    "assets/images/IMG_20230802_100851.jpg",
    "assets/images/IMG_20230802_100851.jpg",
    "",
    "assets/images/3.jpg",
    "",
    "assets/images/2.jpg",
    "",
    "assets/images/2.jpg",
    "assets/images/20230530170555_IMG_0801.jpg",
  ];
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
    "7/24/23",
  ];
  List count =[
    "4",
    "5",
    "3",
    "9",
    "",
    "4",
    "",
    "8",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.edit, color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 170,
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.deepOrange[600],
                      child: Text(
                        "FL",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    Text("Futura Labs",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                    Text("+91 6235428262",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.blueGrey[200])),
                    Row(
                      children: [
                        Text("Set Emoji Status",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.blue[200])),
                        Padding(
                          padding: const EdgeInsets.only(left: 127),
                          child: Icon(
                            CupertinoIcons.chevron_down,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(Icons.add, color: Colors.white),
              ),
              title: Text("Add account"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.people_rounded),
              title: Text("New Group"),
              onLongPress:(){
                Navigator.pushNamed(context,"/chatpage");
              } ,
            ),
            ListTileWid(title: "New channel", myicon: Icons.campaign_sharp),
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text("Contacts"),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("Calls"),
            ),
            ListTile(
              leading: Icon(Icons.bookmark_outline),
              title: Text("Saved Messages"),
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text("Settings"),
            ), ListTile(
              leading: Icon(Icons.nightlight),
              title: Text("Night Mode"),
              trailing: Switch(activeColor: Colors.blue,value: nightmode, onChanged: (bool value) {
                setState(() {
                  nightmode=value;
                });
              },),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Container(
          height: 40,
          width: 300,
          child: TextField(
            style: TextStyle(fontWeight: FontWeight.w400),
            decoration: InputDecoration(
              labelText: "Search",
              labelStyle:TextStyle(
                fontWeight: FontWeight.w400,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50)
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: nameornumber.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading:dp[index]==""?Icon(Icons.account_circle_rounded,size: 60,color: Colors.blueGrey[200],):
                CircleAvatar(
                  radius: 30,
                  backgroundImage:AssetImage(dp[index]),
                  // backgroundColor: Colors.grey,
                  // child: Icon(
                  //   Icons.person,
                  //   size: 40,
                  //   color: Colors.white54,
                  // ),
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
                    count[index]==""?CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                    ):
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blueGrey[200],
                      child: Text(count[index],
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ]
                ),
              );
            }),
      ),
    );
  }
}
