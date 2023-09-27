import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class grdviwtsk extends StatefulWidget {
  const grdviwtsk({super.key});

  @override
  State<grdviwtsk> createState() => _grdviwtskState();
}

class _grdviwtskState extends State<grdviwtsk> {
  List img = [
    "https://shorturl.at/adnOW",
    "https://shorturl.at/bFJTW",
    "https://shorturl.at/aoR37",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK4ekOG3LPhmGexYmgMV8LFYPsFRRCe9XQRg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGd4DfGi4LVw_z_5TCLoK19LY_F4J6JdnTEA&usqp=CAU",
    "https://shorturl.at/yCR09",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcsBaBkOtk7DYeFMB-M3-kK6wCWTQfJTwAPQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA7KyfhzTBFjg2t7Gp1b-vRGKdwEDO8IIRFg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwWTpiSnu8mxOnYK58SW3ZzsGqXq-m13eTTw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-A-4j3ssopJpCL0geBL6PyUz0AN6QVYXOPg&usqp=CAU",
  ];
  List carname = [
    "Audi A6",
    "Maruti Suzuki Wagoner",
    "Maruti Suzuki A Star",
    "Maruti Suzuki Swift",
    "Skoda Fabia",
    "Maruti Suzuki Baleno",
    "Maroiti Suzuki Fronx",
    "Mini cooper",
    "Porsche Panamera",
    "Maruti 800"
  ];
  List price = [
    "₹: 3000",
    "₹: 650",
    "₹: 650",
    "₹: 700",
    "₹: 800",
    "₹: 900",
    "₹: 1000",
    "₹: 4000",
    "₹: 6500",
    "₹: 500",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "   Rent",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.red),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                " a ",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500,color: Colors.black45),
              ),
            ),
            Text(
              "Cars",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w600, color: Colors.red),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        actions: [
          Row(
            children: [
              Icon(Icons.person,color: Colors.white,),
              PopupMenuButton(
                  color: Colors.white,
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(child: Text("Profile")),
                        PopupMenuItem(child: Text("Service")),
                        PopupMenuItem(child: Text("Luxury Segments")),
                        PopupMenuItem(child: Text("Filter")),
                        PopupMenuItem(child: Text("Settings")),
                        PopupMenuItem(child: Text("Log Out",style: TextStyle(color: Colors.red),)),
                      ]),
            ],
          ),
        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemCount: img.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: Container(
                width: 180,
                height: 400,
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                        height: 55,
                        child: Image(image: NetworkImage(img[index]))),
                    Text(carname[index]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          price[index],
                          style: TextStyle(color: Colors.blue),
                        ),
                        Text("/"),
                        Text(
                          "Per Day",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.local_gas_station,
                          size: 15,
                          color: Colors.black54,
                        ),
                        Icon(Icons.airline_seat_recline_extra_sharp,
                            size: 15, color: Colors.black54),
                        Icon(Icons.engineering_sharp,
                            size: 15, color: Colors.black54),
                        Icon(Icons.money, size: 15, color: Colors.black54),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Petrol",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "Seat 4",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "Manual",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "Luxury",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 25,
                      width: 150,
                      child: Center(
                          child: Text(
                        "View Details",
                        style: TextStyle(color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
              elevation: 5,
            );
          }
          ),
    );
  }
}
