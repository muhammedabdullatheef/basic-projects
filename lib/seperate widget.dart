import 'package:flutter/material.dart';

class ListTileWid extends StatelessWidget {
  final String title;
  final IconData myicon;
  const ListTileWid({super.key, required this.title, required this.myicon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(this.myicon),
      title:Text(this.title) ,
    );
  }
}
