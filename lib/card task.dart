import 'package:flutter/material.dart';

class CardTask extends StatelessWidget {
  const CardTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: 370,
                height: 50,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 15),
                        child: Icon(Icons.search_rounded),
                      ),
                      Text(
                        "Search Location",
                        style: TextStyle(fontSize: 16, color: Colors.black38),
                      ),
                    ],
                  ),
                  elevation: 8,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on_outlined, size: 30, weight: 500),
                        Text(
                          "New York",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Tue,Mar 2, 2021 5:11 PM",
                        style: TextStyle(fontSize: 20, color: Colors.black38),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wb_cloudy_outlined,
                        size: 60,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "-5°C",
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "-4°/-6° Feels like -10°",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Few clouds",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Card(
                      child: Container(
                        width: 370,
                        height: 100,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(Icons.water_drop_sharp,
                                  color: Colors.blue, size: 40),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    "Precipitation",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "4%",
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(
                                endIndent: 10, color: Colors.black38, indent: 10),
                            Icon(Icons.light_mode_outlined,
                                color: Colors.blue, size: 40),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    "UV index",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "Medium",
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      elevation: 8,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 13,left: 20),
                        child: Text("Next 3 Hours",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500 ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13,left: 180),
                        child: Text(
                          "See More",
                          style: TextStyle(color: Colors.blue, fontSize: 16,fontWeight:FontWeight.w500 ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: newwid(hgt: 170, wdt: 100, myicon: Icons.cloud_queue, txt:'-5.7°C', txt1: "18:00"),
                      ), Padding(
                        padding: const EdgeInsets.all(10),
                        child: newwid(hgt: 170, wdt: 100, myicon: Icons.light_mode_outlined, txt:'-6.3°C', txt1: "19:00"),
                      ), Padding(
                        padding: const EdgeInsets.all(10),
                        child: newwid(hgt: 170, wdt: 100, myicon: Icons.cloud_queue, txt:'-6.3°C', txt1: "20:00"),
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class newwid extends StatelessWidget {
  const newwid({super.key, required this.hgt, required this.wdt, required this.myicon,required this.txt, required this.txt1});
  final double hgt;
  final double wdt;
  final String txt1;
  final IconData myicon;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: hgt,
        width: wdt,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(txt1,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
              Icon(myicon,color: Colors.blue,size: 40,),
              Text(txt,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
            ],
          ),
        ),


      ),
      elevation: 8,
    );
  }
}



