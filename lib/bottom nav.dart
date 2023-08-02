import 'package:app/InkWell%20task/page1.dart';
import 'package:app/InkWell%20task/page2.dart';
import 'package:flutter/material.dart';

import 'gmail task/gmail home page UI.dart';
import 'gmail task/video chat page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int cindex =0;
  late PageController pg;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pg=PageController(
      initialPage: cindex,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.mail_sharp),label: "Mail"),
        BottomNavigationBarItem(icon: Icon(Icons.videocam_outlined),label: "Meet"),
      ],
        currentIndex:cindex ,
        onTap: (index){
        setState(() {
          cindex=index;
          pg.jumpToPage(index);
        });
        },
      ),
      body: PageView(
        controller: pg,
        children: [
          GmailUi(),
          VideoMeet(),
        ],

      ),
    );
  }
}
