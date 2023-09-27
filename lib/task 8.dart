import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class task8 extends StatefulWidget {
  const task8({super.key});

  @override
  State<task8> createState() => _task8State();
}

class _task8State extends State<task8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children:  [

              Padding(
                padding: EdgeInsets.only(top: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("What do you think you'll",style: TextStyle(fontSize: 30),),
                    Text("mostly use?",style: TextStyle(fontSize: 30),),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text("Top on all that apply,This will help us"),
                    ),
                    Text("customize your home page."),
                  ],
                ),
              ),
          Row(
            children: [
              sprt(hgt: 80, wdt: 80, myicon: Icons.settings_outlined, clr: Colors.black12, txt: 'Maintenance Requests',),
              sprt(hgt: 80, wdt: 80, myicon:Icons.grain, clr: Colors.black12, txt: 'Integrations',),
              sprt(hgt: 80, wdt: 80, myicon: Icons.highlight, clr: Colors.black12, txt: 'Light Control',),
            ],
          ),
          Row(
            children: [
              sprt(hgt: 80, wdt: 80, myicon: Icons.water_drop_outlined, clr: Colors.black12, txt: 'Leak Detector'),
              sprt(hgt: 80, wdt: 80, myicon: Icons.ac_unit, clr: Colors.black12, txt: 'Temperature control'),
              sprt(hgt: 80, wdt: 80, myicon: Icons.key, clr: Colors.black12, txt: 'Guest Access'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              width: 200,
                height: 60,
                child: ElevatedButton(onPressed: (){}, child: Text("Next",style: TextStyle(color: Colors.black,fontSize: 20),),style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange[600],),)),
          )

        ],
      ),
    );
  }
}

class sprt extends StatelessWidget {
  const sprt({super.key, required this.hgt, required this.wdt, required this.myicon, required this.clr, required this.txt});
  final double hgt;
  final double wdt;
  final IconData myicon;
  final Color clr;
  final String txt;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35,top: 25),
          child: Container(
            width: hgt,
            height: wdt,
            child: Icon(myicon),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
              color: clr,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:40,top:10,bottom:15 ),
          child: SizedBox(
            width: wdt,
            child: Text(txt,style: TextStyle(fontSize: 10),),
          ),
        ),
      ],
    );
  }
}

