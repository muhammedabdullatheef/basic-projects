import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBar extends StatefulWidget {
  const RatingBar({super.key});
  @override
  State<RatingBar> createState() => _RatingBarState();


}

class _RatingBarState extends State<RatingBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 200,),
          // RatingBar.builder(
          //   initialRating: 3,
          //   minRating: 1,
          //   direction: Axis.horizontal,
          //   allowHalfRating: true,
          //   itemCount: 5,
          //   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          //   itemBuilder: (context, _) => Icon(
          //     Icons.star,
          //     color: Colors.amber,
          //   ),
          //   onRatingUpdate: (rating) {
          //     print(rating);
          //   },
          // ),
            ],
          ),
        ),
      );

  }
}
