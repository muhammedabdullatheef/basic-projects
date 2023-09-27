import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../SingUp page.dart';
import '../login page.dart';

class BottomNAV extends StatefulWidget {
  const BottomNAV({super.key});

  @override
  State<BottomNAV> createState() => _BottomNAVState();
}

class _BottomNAVState extends State<BottomNAV> {
  int cindex =0;
  late PageController Pview;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Pview = PageController(
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
            Pview.jumpToPage(index);
          });
        },
      ),
      body: PageView(
        controller:Pview ,
        children: [
          Profile2(),
          login(),
        ],

      ),
    );
  }
}

