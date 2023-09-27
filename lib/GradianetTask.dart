import 'package:flutter/material.dart';

class CartPage1 extends StatefulWidget {
  const CartPage1({super.key});

  @override
  State<CartPage1> createState() => _CartPage1State();
}

class _CartPage1State extends State<CartPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                Container(
                  width: 400,
                  height: 250,
                  decoration: BoxDecoration(gradient:
                  LinearGradient(colors: [Colors.orange,Colors.yellow])),
                ),
                Positioned(
                    // bottom: 10,
                    top: 90,
                    left: 70,
                    child: Image(image: AssetImage("assets/images/nike air.png"))),
              ],
            ),
          ),
          Text("Air Force 1",style: TextStyle(fontSize: 40,
          fontWeight: FontWeight.w600
          ),),
          Text("\$1,750,00",
            style:TextStyle(
              fontSize:16,
              color: Colors.red
            )),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 15,
              backgroundColor: Colors.grey,
              ),
              SizedBox(width: 10,),
              CircleAvatar(radius: 15,
              backgroundColor: Colors.black,
              ),
              SizedBox(width: 10,),
              CircleAvatar(radius: 15,
              backgroundColor: Colors.red,
              ),
            ],
          ),
          Text("Nike coundinued the fastive 35th"),
          SizedBox(height: 10,),
          Text("anniversary celebration of Bruce"),
          SizedBox(height: 10,),
        ],
      ),


    );
  }
}
