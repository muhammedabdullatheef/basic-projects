import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Futuremyclass extends StatefulWidget {
  const Futuremyclass({super.key});

  @override
  State<Futuremyclass> createState() => _FuturemyclassState();
}

class _FuturemyclassState extends State<Futuremyclass> {
  File? myimage;

Future<void> ImagePic()async {
  var pic = await ImagePicker().pickImage(source: ImageSource.gallery);
  setState(() {
    myimage= File(pic!.path);

  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          myimage==null?Container():Image(image: FileImage(myimage!),),
          ElevatedButton(onPressed: (){ImagePic();}, child: Text("Change pic")),
        ],
      ),
    );
  }
}
