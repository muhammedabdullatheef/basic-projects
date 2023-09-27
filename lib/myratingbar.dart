import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyRatingBar extends StatefulWidget {
  const MyRatingBar({super.key});

  @override
  State<MyRatingBar> createState() => _MyRatingBarState();
}

class _MyRatingBarState extends State<MyRatingBar> {
  double ratting =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              RatingBar.builder(
                allowHalfRating: true,
                  itemCount: 5,itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.amber,)
                  ,onRatingUpdate: (rating){
                setState(() {
                  ratting=rating;
                });
                  }),
              Text("$ratting"),

            ],
          ),
        ),
      ),
    );
  }
}
