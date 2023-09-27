import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyratingbarTsk extends StatefulWidget {
  const MyratingbarTsk({super.key});

  @override
  State<MyratingbarTsk> createState() => _MyratingbarTskState();
}

class _MyratingbarTskState extends State<MyratingbarTsk> {
  double ratting = 0;
  String selectvalue ="Good";
  var reviews=[
    "Average",
    "Good",
    "Very Good",
    "Exllent",
    "Too bad",
    "Wast of money"
  ];
  TextEditingController ratecontrol=TextEditingController();
  late SharedPreferences  prefer;
  Future<void> SharedPre(prdtRatting,value) async {
    prefer = await SharedPreferences.getInstance();
    prefer.setDouble("Rating" , prdtRatting);
    prefer.setString("SeltValue" , value);
    setState(() {
      ratting=prdtRatting;
      selectvalue=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text(
                "Delivery Review",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30,color: Colors.black),
              ),
              SizedBox(height: 30,),
              Image(image: NetworkImage("https://shorturl.at/knvR2")),
              RatingBar.builder(
                itemCount: 5,
                  allowHalfRating: true,
                  itemBuilder: (context,_)=>
                  Icon(Icons.star,color: Colors.amber,),
                   onRatingUpdate:(rating){
                  setState(() {
                    ratting=rating;
                  });
                   }
              ),
              Text("$ratting"),
              SizedBox(height: 10,),
              Text("How was your experiance",style: TextStyle(color: Colors.black38,fontSize: 20,fontWeight: FontWeight.w500),),
              Container(
                width: 200,
                height: 60,
                child: Center(
                  child: DropdownButton(focusColor: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                      value: selectvalue,
                      items: reviews.map((String r) {
                        return DropdownMenuItem(
                          child: Text(r),
                          value: r,
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectvalue = value.toString();
                        });
                      }
                      ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                setState(() {
                  SharedPre(selectvalue,ratting);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Review()),
                  );
                });
              }, child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}



class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  late double ratting;
  late String selectvalue;
  late SharedPreferences  prefer;

  Future<void> Pik()async {
    prefer= await SharedPreferences.getInstance();
    setState(() {
      // ratting=prefer.getDouble() ??"";
      selectvalue=prefer.getString("SeltValue") ??"";
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Pik();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(child: Text("Coustomer Review",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.black),)),
          SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Product:"),
            ),
            Image(image: NetworkImage("https://shorturl.at/knvR2")),
            SizedBox(height: 20,),
            RatingBarIndicator(itemBuilder: (context,_){
             return Icon(Icons.star);
            },
            itemCount: 5,
              itemPadding: EdgeInsets.only(right: 3),
            ),
          ],
        ),
      ),
    );
  }
}

