import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewTask01 extends StatefulWidget {
  const NewTask01({super.key});

  @override
  State<NewTask01> createState() => _NewTask01State();
}

class _NewTask01State extends State<NewTask01> {
  File? img;

  Future<void> ImagePic2() async {
    var pic = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      img = File(pic!.path);
      images.add(File(pic!.path));
    });
  }

  List<File> images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: images.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == images.length) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () {
                          ImagePic2();
                        },
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                      ),
                    ),
                  ],
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    child: Image(
                      image: FileImage(images[index]!),
                    ),
                  ),
                );
              }
            }),
      ),
    );
  }
}
